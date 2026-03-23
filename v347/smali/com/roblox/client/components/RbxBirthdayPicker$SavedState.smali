.class Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxBirthdayPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 636
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState$1;

    invoke-direct {v0}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 621
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 612
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    .line 613
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    .line 614
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    .line 625
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/roblox/client/components/RbxBirthdayPicker$1;)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 617
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 612
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    .line 613
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    .line 614
    iput v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    .line 618
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 629
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 630
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget v0, p0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    return-void
.end method
