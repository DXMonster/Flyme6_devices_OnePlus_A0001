.class final Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;
.super Lcom/android/lineageos/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/lineageos/widget/SettingsAppWidgetProvider$StateTracker;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 609
    .local v0, "on":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 600
    const v0, 0x7f0c0af2

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 598
    const v0, 0x7f13028b

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 602
    if-eqz p1, :cond_0

    const v0, 0x7f020048

    :goto_0
    return v0

    .line 603
    :cond_0
    const v0, 0x7f020047

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 597
    const v0, 0x7f13028a

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 599
    const v0, 0x7f13028c

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 613
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 620
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 621
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 623
    .local v1, "sync":Z
    new-instance v2, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker$1;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker$1;-><init>(Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/lineageos/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 618
    return-void
.end method
