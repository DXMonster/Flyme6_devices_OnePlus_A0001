.class Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "ButtonBacklightBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field button:I

.field keyboard:I

.field timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState$1;

    invoke-direct {v0}, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState$1;-><init>()V

    .line 352
    sput-object v0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 333
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 347
    iget v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->button:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Lcom/android/lineageos/cyanogenmod/ButtonBacklightBrightness$SavedState;->keyboard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    return-void
.end method
