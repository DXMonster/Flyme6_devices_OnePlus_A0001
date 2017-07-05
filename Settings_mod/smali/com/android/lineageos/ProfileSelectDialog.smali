.class public Lcom/android/lineageos/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mSelectedTile:Lcom/android/lineageos/dashboard/DashboardTile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/android/lineageos/dashboard/DashboardTile;)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "tile"    # Lcom/android/lineageos/dashboard/DashboardTile;

    .prologue
    .line 38
    new-instance v1, Lcom/android/lineageos/ProfileSelectDialog;

    invoke-direct {v1}, Lcom/android/lineageos/ProfileSelectDialog;-><init>()V

    .line 39
    .local v1, "dialog":Lcom/android/lineageos/ProfileSelectDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "selectedTile"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v1, v0}, Lcom/android/lineageos/ProfileSelectDialog;->setArguments(Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v2, "select_profile"

    invoke-virtual {v1, p0, v2}, Lcom/android/lineageos/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/lineageos/ProfileSelectDialog;->mSelectedTile:Lcom/android/lineageos/dashboard/DashboardTile;

    iget-object v1, v1, Lcom/android/lineageos/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 66
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/lineageos/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lineageos/ProfileSelectDialog;->mSelectedTile:Lcom/android/lineageos/dashboard/DashboardTile;

    iget-object v2, v2, Lcom/android/lineageos/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/lineageos/ProfileSelectDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "selectedTile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/lineageos/dashboard/DashboardTile;

    iput-object v0, p0, Lcom/android/lineageos/ProfileSelectDialog;->mSelectedTile:Lcom/android/lineageos/dashboard/DashboardTile;

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/lineageos/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 54
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/android/lineageos/ProfileSelectDialog;->mSelectedTile:Lcom/android/lineageos/dashboard/DashboardTile;

    iget-object v4, v4, Lcom/android/lineageos/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    .line 55
    invoke-static {v3, v2, v4}, Lcom/android/lineageos/Utils;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/lineageos/UserAdapter;

    move-result-object v0

    .line 57
    .local v0, "adapter":Lcom/android/lineageos/UserAdapter;
    const v3, 0x7f0c0e22

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
