.class public final enum Lcom/roblox/client/pushnotification/b/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/pushnotification/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/pushnotification/b/k;

.field public static final enum b:Lcom/roblox/client/pushnotification/b/k;

.field public static final enum c:Lcom/roblox/client/pushnotification/b/k;

.field private static final synthetic d:[Lcom/roblox/client/pushnotification/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/roblox/client/pushnotification/b/k;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/pushnotification/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/pushnotification/b/k;->a:Lcom/roblox/client/pushnotification/b/k;

    .line 9
    new-instance v0, Lcom/roblox/client/pushnotification/b/k;

    const-string v1, "GOOGLE_CLOUD_MESSAGING"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/pushnotification/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/pushnotification/b/k;->b:Lcom/roblox/client/pushnotification/b/k;

    .line 10
    new-instance v0, Lcom/roblox/client/pushnotification/b/k;

    const-string v1, "AMAZON_DEVICE_MESSAGING"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/pushnotification/b/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/pushnotification/b/k;->c:Lcom/roblox/client/pushnotification/b/k;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/roblox/client/pushnotification/b/k;

    sget-object v1, Lcom/roblox/client/pushnotification/b/k;->a:Lcom/roblox/client/pushnotification/b/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/pushnotification/b/k;->b:Lcom/roblox/client/pushnotification/b/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/pushnotification/b/k;->c:Lcom/roblox/client/pushnotification/b/k;

    aput-object v1, v0, v4

    sput-object v0, Lcom/roblox/client/pushnotification/b/k;->d:[Lcom/roblox/client/pushnotification/b/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/pushnotification/b/k;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/roblox/client/pushnotification/b/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/k;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/pushnotification/b/k;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/roblox/client/pushnotification/b/k;->d:[Lcom/roblox/client/pushnotification/b/k;

    invoke-virtual {v0}, [Lcom/roblox/client/pushnotification/b/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/pushnotification/b/k;

    return-object v0
.end method
