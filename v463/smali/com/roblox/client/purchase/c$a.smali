.class public final enum Lcom/roblox/client/purchase/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/purchase/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/purchase/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/purchase/c$a;

.field public static final enum b:Lcom/roblox/client/purchase/c$a;

.field public static final enum c:Lcom/roblox/client/purchase/c$a;

.field public static final enum d:Lcom/roblox/client/purchase/c$a;

.field public static final enum e:Lcom/roblox/client/purchase/c$a;

.field public static final enum f:Lcom/roblox/client/purchase/c$a;

.field public static final enum g:Lcom/roblox/client/purchase/c$a;

.field private static final synthetic h:[Lcom/roblox/client/purchase/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->a:Lcom/roblox/client/purchase/c$a;

    .line 35
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->b:Lcom/roblox/client/purchase/c$a;

    .line 37
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "RETRY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->c:Lcom/roblox/client/purchase/c$a;

    .line 39
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "LIMIT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->d:Lcom/roblox/client/purchase/c$a;

    .line 40
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "LIMIT_UNDER_13"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->e:Lcom/roblox/client/purchase/c$a;

    .line 41
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "ERROR_CHECKING_BALANCE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->f:Lcom/roblox/client/purchase/c$a;

    .line 42
    new-instance v0, Lcom/roblox/client/purchase/c$a;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/roblox/client/purchase/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/purchase/c$a;->g:Lcom/roblox/client/purchase/c$a;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/roblox/client/purchase/c$a;

    .line 28
    sget-object v9, Lcom/roblox/client/purchase/c$a;->a:Lcom/roblox/client/purchase/c$a;

    aput-object v9, v1, v2

    sget-object v2, Lcom/roblox/client/purchase/c$a;->b:Lcom/roblox/client/purchase/c$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/purchase/c$a;->c:Lcom/roblox/client/purchase/c$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/purchase/c$a;->d:Lcom/roblox/client/purchase/c$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/purchase/c$a;->e:Lcom/roblox/client/purchase/c$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/roblox/client/purchase/c$a;->f:Lcom/roblox/client/purchase/c$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/roblox/client/purchase/c$a;->h:[Lcom/roblox/client/purchase/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/purchase/c$a;
    .locals 1

    .line 28
    const-class v0, Lcom/roblox/client/purchase/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/purchase/c$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/purchase/c$a;
    .locals 1

    .line 28
    sget-object v0, Lcom/roblox/client/purchase/c$a;->h:[Lcom/roblox/client/purchase/c$a;

    invoke-virtual {v0}, [Lcom/roblox/client/purchase/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/purchase/c$a;

    return-object v0
.end method
