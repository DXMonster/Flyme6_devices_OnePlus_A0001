.class Lcom/android/lineageos/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/TrustedCredentialsSettings;->addTab(Lcom/android/lineageos/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/TrustedCredentialsSettings;
    .param p2, "val$adapter"    # Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/lineageos/TrustedCredentialsSettings$2;->this$0:Lcom/android/lineageos/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/lineageos/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/lineageos/TrustedCredentialsSettings$2;->this$0:Lcom/android/lineageos/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/lineageos/TrustedCredentialsSettings$2;->val$adapter:Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/android/lineageos/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lineageos/TrustedCredentialsSettings;->-wrap1(Lcom/android/lineageos/TrustedCredentialsSettings;Lcom/android/lineageos/TrustedCredentialsSettings$CertHolder;)V

    .line 243
    return-void
.end method
