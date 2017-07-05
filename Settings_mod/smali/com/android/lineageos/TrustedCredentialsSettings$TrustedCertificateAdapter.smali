.class Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedCertificateAdapter"
.end annotation


# instance fields
.field private final mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

.field final synthetic this$0:Lcom/android/lineageos/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$Tab;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/lineageos/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/lineageos/TrustedCredentialsSettings$Tab;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/lineageos/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 368
    new-instance v0, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$Tab;Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;)V

    iput-object v0, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    .line 369
    invoke-virtual {p0}, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->load()V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$Tab;Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/TrustedCredentialsSettings;
    .param p2, "tab"    # Lcom/android/lineageos/TrustedCredentialsSettings$Tab;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$Tab;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    invoke-static {v1}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 385
    .local v0, "certHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 388
    :cond_0
    return v2
.end method

.method public getItem(I)Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    invoke-static {v0}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;->-get1(Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 394
    int-to-long v0, p1

    return-wide v0
.end method

.method public getListViewId(Lcom/android/lineageos/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p1, "tab"    # Lcom/android/lineageos/TrustedCredentialsSettings$Tab;

    .prologue
    .line 377
    invoke-static {p1}, Lcom/android/lineageos/TrustedCredentialsSettings$Tab;->-get2(Lcom/android/lineageos/TrustedCredentialsSettings$Tab;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/lineageos/TrustedCredentialsSettings;

    invoke-virtual {p0, p1}, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    invoke-static {v2}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;->-get2(Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;)Lcom/android/lineageos/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/lineageos/TrustedCredentialsSettings;->-wrap0(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;Lcom/android/lineageos/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData$AliasLoader;

    iget-object v1, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData$AliasLoader;-><init>(Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 380
    return-void
.end method

.method public remove(Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "certHolder"    # Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->mData:Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;

    invoke-virtual {v0, p1}, Lcom/android/lineageos/TrustedCredentialsSettings$AdapterData;->remove(Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;)V

    .line 372
    return-void
.end method