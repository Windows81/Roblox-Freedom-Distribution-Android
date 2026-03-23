.class public final enum Lcom/roblox/client/purchase/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/purchase/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/purchase/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/purchase/h$a;

.field public static final enum b:Lcom/roblox/client/purchase/h$a;

.field public static final enum c:Lcom/roblox/client/purchase/h$a;

.field public static final enum d:Lcom/roblox/client/purchase/h$a;

.field public static final enum e:Lcom/roblox/client/purchase/h$a;

.field private static final synthetic f:[Lcom/roblox/client/purchase/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 22
    new-instance v0, Lcom/roblox/client/purchase/h$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/h$a;->a:Lcom/roblox/client/purchase/h$a;

    .line 23
    new-instance v0, Lcom/roblox/client/purchase/h$a;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/purchase/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/h$a;->b:Lcom/roblox/client/purchase/h$a;

    .line 25
    new-instance v0, Lcom/roblox/client/purchase/h$a;

    const-string v1, "BOGUS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/purchase/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/h$a;->c:Lcom/roblox/client/purchase/h$a;

    .line 26
    new-instance v0, Lcom/roblox/client/purchase/h$a;

    const-string v1, "EMPTY_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/purchase/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/h$a;->d:Lcom/roblox/client/purchase/h$a;

    .line 27
    new-instance v0, Lcom/roblox/client/purchase/h$a;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/purchase/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/h$a;->e:Lcom/roblox/client/purchase/h$a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/roblox/client/purchase/h$a;

    .line 21
    sget-object v7, Lcom/roblox/client/purchase/h$a;->a:Lcom/roblox/client/purchase/h$a;

    aput-object v7, v1, v2

    sget-object v2, Lcom/roblox/client/purchase/h$a;->b:Lcom/roblox/client/purchase/h$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/purchase/h$a;->c:Lcom/roblox/client/purchase/h$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/purchase/h$a;->d:Lcom/roblox/client/purchase/h$a;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/roblox/client/purchase/h$a;->f:[Lcom/roblox/client/purchase/h$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/purchase/h$a;
    .locals 1

    .line 21
    const-class v0, Lcom/roblox/client/purchase/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/purchase/h$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/purchase/h$a;
    .locals 1

    .line 21
    sget-object v0, Lcom/roblox/client/purchase/h$a;->f:[Lcom/roblox/client/purchase/h$a;

    invoke-virtual {v0}, [Lcom/roblox/client/purchase/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/purchase/h$a;

    return-object v0
.end method
