.class Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/lineageos/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/applications/InstalledAppDetails;


# direct methods
.method private constructor <init>(Lcom/android/lineageos/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/applications/InstalledAppDetails;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lineageos/applications/InstalledAppDetails;Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/applications/InstalledAppDetails;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/lineageos/applications/InstalledAppDetails;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/lineageos/applications/ProcStatsPackageEntry;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 904
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-virtual {v4}, Lcom/android/lineageos/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 905
    return-object v8

    .line 907
    :cond_0
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    .line 908
    return-object v8

    .line 910
    :cond_1
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    if-nez v4, :cond_2

    .line 911
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    new-instance v5, Lcom/android/lineageos/applications/ProcStatsData;

    iget-object v6, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-virtual {v6}, Lcom/android/lineageos/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/android/lineageos/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    .line 912
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    sget-object v5, Lcom/android/lineageos/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v6, v5, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/lineageos/applications/ProcStatsData;->setDuration(J)V

    .line 914
    :cond_2
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/lineageos/applications/ProcStatsData;->refreshStats(Z)V

    .line 915
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/lineageos/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgEntry$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/lineageos/applications/ProcStatsPackageEntry;

    .line 916
    .local v2, "pkgEntry":Lcom/android/lineageos/applications/ProcStatsPackageEntry;
    iget-object v4, v2, Lcom/android/lineageos/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lineageos/applications/ProcStatsEntry;

    .line 917
    .local v0, "entry":Lcom/android/lineageos/applications/ProcStatsEntry;
    iget v4, v0, Lcom/android/lineageos/applications/ProcStatsEntry;->mUid:I

    iget-object v5, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v5, v5, Lcom/android/lineageos/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_4

    .line 918
    invoke-virtual {v2}, Lcom/android/lineageos/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 919
    return-object v2

    .line 923
    .end local v0    # "entry":Lcom/android/lineageos/applications/ProcStatsEntry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "pkgEntry":Lcom/android/lineageos/applications/ProcStatsPackageEntry;
    :cond_5
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 903
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/lineageos/applications/ProcStatsPackageEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/lineageos/applications/ProcStatsPackageEntry;)V
    .locals 9
    .param p1, "entry"    # Lcom/android/lineageos/applications/ProcStatsPackageEntry;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 928
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-virtual {v2}, Lcom/android/lineageos/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 929
    return-void

    .line 931
    :cond_0
    if-eqz p1, :cond_1

    .line 932
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iput-object p1, v2, Lcom/android/lineageos/applications/InstalledAppDetails;->mStats:Lcom/android/lineageos/applications/ProcStatsPackageEntry;

    .line 933
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/lineageos/applications/InstalledAppDetails;->-get2(Lcom/android/lineageos/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 934
    iget-wide v2, p1, Lcom/android/lineageos/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v4, p1, Lcom/android/lineageos/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 935
    iget-object v4, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v4, v4, Lcom/android/lineageos/applications/InstalledAppDetails;->mStatsManager:Lcom/android/lineageos/applications/ProcStatsData;

    invoke-virtual {v4}, Lcom/android/lineageos/applications/ProcStatsData;->getMemInfo()Lcom/android/lineageos/applications/ProcStatsData$MemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/lineageos/applications/ProcStatsData$MemInfo;->weightToRam:D

    .line 934
    mul-double v0, v2, v4

    .line 936
    .local v0, "amount":D
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/lineageos/applications/InstalledAppDetails;->-get2(Lcom/android/lineageos/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    new-array v4, v6, [Ljava/lang/Object;

    .line 937
    iget-object v5, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-virtual {v5}, Lcom/android/lineageos/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    double-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 936
    const v5, 0x7f0c0e74

    invoke-virtual {v3, v5, v4}, Lcom/android/lineageos/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 927
    .end local v0    # "amount":D
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/lineageos/applications/InstalledAppDetails;->-get2(Lcom/android/lineageos/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 940
    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/lineageos/applications/InstalledAppDetails;->-get2(Lcom/android/lineageos/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    const v4, 0x7f0c0e75

    invoke-virtual {v3, v4}, Lcom/android/lineageos/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 927
    check-cast p1, Lcom/android/lineageos/applications/ProcStatsPackageEntry;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/lineageos/applications/InstalledAppDetails$MemoryUpdater;->onPostExecute(Lcom/android/lineageos/applications/ProcStatsPackageEntry;)V

    return-void
.end method
