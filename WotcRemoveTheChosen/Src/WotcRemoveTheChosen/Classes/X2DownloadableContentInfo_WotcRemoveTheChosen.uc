class X2DownloadableContentInfo_WotcRemoveTheChosen extends X2DownloadableContentInfo;

static event OnLoadedSavedGame()
{
}

static event InstallNewCampaign(XComGameState StartState)
{
    local XComGameState_AdventChosen Chosen;

    foreach StartState.IterateByClassType(class'XComGameState_AdventChosen', Chosen)
    {
        Chosen.bDefeated = true;
        `log("WotcRemoveTheChosen: " @ Chosen.Nickname @ " starts defeated.");
    }
}
