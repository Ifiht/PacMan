import xyz.jpenilla.runpaper.task.RunServer

plugins {
    id("xyz.jpenilla.run-paper") version "2.3.1"
}

val prodPlugins = runPaper.downloadPluginsSpec {
    modrinth("terra", "6.6.1-BETA-bukkit")
}

val testPlugins = runPaper.downloadPluginsSpec {
    from(prodPlugins) // Copy everything from prod
    github("Ifiht", "AutoStop", "v1.2.0", "AutoStop-1.2.0.jar")
}

// Test PaperMC run & immediately shut down, for github actions
tasks.register<RunServer>("runServerTest") {
    //dependsOn(tasks.shadowJar)
    minecraftVersion("1.21.4")
    downloadPlugins.from(testPlugins)
}
// Start a local PaperMC test server for login & manual testing
tasks.register<RunServer>("runServerInteractive") {
    //dependsOn(tasks.shadowJar)
    minecraftVersion("1.21.4")
    downloadPlugins.from(prodPlugins)
}
