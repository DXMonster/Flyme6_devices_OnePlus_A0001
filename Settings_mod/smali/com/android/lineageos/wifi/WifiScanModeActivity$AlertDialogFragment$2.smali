.class Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment$2;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment$2;->this$1:Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment$2;->this$1:Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/lineageos/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/lineageos/wifi/WifiScanModeActivity;

    invoke-static {v0}, Lcom/android/lineageos/wifi/WifiScanModeActivity;->-wrap0(Lcom/android/lineageos/wifi/WifiScanModeActivity;)V

    .line 137
    return-void
.end method