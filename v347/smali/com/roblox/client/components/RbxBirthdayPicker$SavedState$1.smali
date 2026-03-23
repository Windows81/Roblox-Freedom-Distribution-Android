.class final Lcom/roblox/client/components/RbxBirthdayPicker$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/roblox/client/components/RbxBirthdayPicker$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;
    .locals 1

    .prologue
    .line 642
    new-array v0, p1, [Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState$1;->a(Landroid/os/Parcel;)Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/roblox/client/components/RbxBirthdayPicker$SavedState$1;->a(I)[Lcom/roblox/client/components/RbxBirthdayPicker$SavedState;

    move-result-object v0

    return-object v0
.end method
