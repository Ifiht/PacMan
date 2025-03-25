import xyz.jpenilla.runpaper.task.RunServer
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import kotlin.io.path.*

repositories {
    mavenCentral()
}

plugins {
    java
    kotlin("jvm") version "2.1.20-RC3"
    id("xyz.jpenilla.run-paper") version "2.3.1"
}

dependencies {
    implementation(kotlin("stdlib"))
}


val prodPlugins = runPaper.downloadPluginsSpec {
    modrinth("terra", "6.6.1-BETA-bukkit")
}

val testPlugins = runPaper.downloadPluginsSpec {
    from(prodPlugins) // Copy everything from prod
    github("Ifiht", "AutoStop", "v1.2.0", "AutoStop-1.2.0.jar")
}


// Function to delete & copy data and pack.mcmeta before running the server
fun syncDataPack() {
    val worldDirs = listOf(
        file("run/world").toPath(),
        file("run/world_nether").toPath(),
        file("run/world_the_end").toPath()
    )
    // Delete existing world directories if they exist
    worldDirs.forEach { worldDir ->
        if (worldDir.exists()) {
            worldDir.toFile().deleteRecursively()
            println("Deleted existing world directory: $worldDir")
        }
    }
    // Create new world directories
    val sourceDataDir = file("data").toPath()
    val targetDataDir = file("run/world/datapacks/test/data").toPath()
    val sourcePackMcmeta = file("pack.mcmeta").toPath()
    val targetPackMcmeta = file("run/world/datapacks/test/pack.mcmeta").toPath()

    // Sync data directory
    if (sourceDataDir.exists()) {
        if (targetDataDir.exists()) {
            targetDataDir.toFile().deleteRecursively() // Delete old contents
        }
        Files.createDirectories(targetDataDir) // Ensure target directory exists
        sourceDataDir.toFile().copyRecursively(targetDataDir.toFile(), overwrite = true) // Copy new contents
        println("Synced data directory to $targetDataDir")
    } else {
        println("Warning: Source data directory does not exist!")
    }

    // Copy pack.mcmeta
    if (sourcePackMcmeta.exists()) {
        Files.copy(sourcePackMcmeta, targetPackMcmeta, StandardCopyOption.REPLACE_EXISTING)
        println("Copied pack.mcmeta to $targetPackMcmeta")
    } else {
        println("Warning: pack.mcmeta file does not exist!")
    }
}

// Test PaperMC run & immediately shut down, for github actions
tasks.register<RunServer>("runServerTest") {
    //dependsOn(tasks.shadowJar)
    minecraftVersion("1.21.4")
    downloadPlugins.from(testPlugins)
    doFirst { syncDataPack() } // Run before the server starts
}
// Start a local PaperMC test server for login & manual testing
tasks.register<RunServer>("runServerInteractive") {
    //dependsOn(tasks.shadowJar)
    minecraftVersion("1.21.4")
    downloadPlugins.from(prodPlugins)
    doFirst { syncDataPack() } // Run before the server starts
}
