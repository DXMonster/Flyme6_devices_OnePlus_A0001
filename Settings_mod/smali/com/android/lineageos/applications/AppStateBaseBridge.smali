.class public abstract Lcom/android/lineageos/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/android/lineageoslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;,
        Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;,
        Lcom/android/lineageos/applications/AppStateBaseBridge$Callback;
    }
.end annotation


# instance fields
.field protected final mAppSession:Lcom/android/lineageoslib/applications/ApplicationsState$Session;

.field protected final mAppState:Lcom/android/lineageoslib/applications/ApplicationsState;

.field protected final mCallback:Lcom/android/lineageos/applications/AppStateBaseBridge$Callback;

.field protected final mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final mMainHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/lineageoslib/applications/ApplicationsState;Lcom/android/lineageos/applications/AppStateBaseBridge$Callback;)V
    .locals 3
    .param p1, "appState"    # Lcom/android/lineageoslib/applications/ApplicationsState;
    .param p2, "callback"    # Lcom/android/lineageos/applications/AppStateBaseBridge$Callback;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppState:Lcom/android/lineageoslib/applications/ApplicationsState;

    .line 41
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppState:Lcom/android/lineageoslib/applications/ApplicationsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppState:Lcom/android/lineageoslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/lineageoslib/applications/ApplicationsState;->newSession(Lcom/android/lineageoslib/applications/ApplicationsState$Callbacks;)Lcom/android/lineageoslib/applications/ApplicationsState$Session;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppSession:Lcom/android/lineageoslib/applications/ApplicationsState$Session;

    .line 42
    iput-object p2, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mCallback:Lcom/android/lineageos/applications/AppStateBaseBridge$Callback;

    .line 46
    new-instance v0, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v2, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppState:Lcom/android/lineageoslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/lineageoslib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/android/lineageos/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    .line 47
    new-instance v0, Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/lineageos/applications/AppStateBaseBridge;Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;)V

    iput-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$MainHandler;

    .line 39
    return-void

    :cond_0
    move-object v0, v1

    .line 41
    goto :goto_0
.end method


# virtual methods
.method public forceUpdate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method protected abstract loadAllExtraInfo()V
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 73
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 78
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppSession:Lcom/android/lineageoslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lineageoslib/applications/ApplicationsState$Session;->pause()V

    .line 55
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppSession:Lcom/android/lineageoslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lineageoslib/applications/ApplicationsState$Session;->release()V

    .line 59
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mHandler:Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lineageos/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 52
    iget-object v0, p0, Lcom/android/lineageos/applications/AppStateBaseBridge;->mAppSession:Lcom/android/lineageoslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/lineageoslib/applications/ApplicationsState$Session;->resume()V

    .line 50
    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method