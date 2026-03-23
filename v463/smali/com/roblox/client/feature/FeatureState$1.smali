.class final Lcom/roblox/client/feature/FeatureState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/feature/FeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/roblox/client/feature/FeatureState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/roblox/client/feature/FeatureState;
    .locals 2

    .line 91
    new-instance v0, Lcom/roblox/client/feature/FeatureState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/roblox/client/feature/FeatureState;-><init>(Landroid/os/Parcel;Lcom/roblox/client/feature/FeatureState$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/roblox/client/feature/FeatureState;
    .locals 0

    .line 95
    new-array p1, p1, [Lcom/roblox/client/feature/FeatureState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/FeatureState$1;->a(Landroid/os/Parcel;)Lcom/roblox/client/feature/FeatureState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/roblox/client/feature/FeatureState$1;->a(I)[Lcom/roblox/client/feature/FeatureState;

    move-result-object p1

    return-object p1
.end method
