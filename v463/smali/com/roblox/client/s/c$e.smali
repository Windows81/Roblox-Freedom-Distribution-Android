.class public final enum Lcom/roblox/client/s/c$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/s/c$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/s/c$e;

.field public static final enum b:Lcom/roblox/client/s/c$e;

.field public static final enum c:Lcom/roblox/client/s/c$e;

.field public static final enum d:Lcom/roblox/client/s/c$e;

.field public static final enum e:Lcom/roblox/client/s/c$e;

.field private static final synthetic f:[Lcom/roblox/client/s/c$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 104
    new-instance v0, Lcom/roblox/client/s/c$e;

    const-string v1, "LOGOUT_BY_USER_IN_NATIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/s/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$e;->a:Lcom/roblox/client/s/c$e;

    .line 105
    new-instance v0, Lcom/roblox/client/s/c$e;

    const-string v1, "LOGOUT_BY_USER_IN_LUA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/s/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$e;->b:Lcom/roblox/client/s/c$e;

    .line 106
    new-instance v0, Lcom/roblox/client/s/c$e;

    const-string v1, "LOGOUT_BY_401_ERROR_IN_NATIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/s/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$e;->c:Lcom/roblox/client/s/c$e;

    .line 107
    new-instance v0, Lcom/roblox/client/s/c$e;

    const-string v1, "LOGOUT_BY_401_ERROR_IN_WEB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/s/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$e;->d:Lcom/roblox/client/s/c$e;

    .line 108
    new-instance v0, Lcom/roblox/client/s/c$e;

    const-string v1, "LOGOUT_BY_401_ERROR_IN_LUA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/s/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$e;->e:Lcom/roblox/client/s/c$e;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/roblox/client/s/c$e;

    .line 103
    sget-object v7, Lcom/roblox/client/s/c$e;->a:Lcom/roblox/client/s/c$e;

    aput-object v7, v1, v2

    sget-object v2, Lcom/roblox/client/s/c$e;->b:Lcom/roblox/client/s/c$e;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/s/c$e;->c:Lcom/roblox/client/s/c$e;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/s/c$e;->d:Lcom/roblox/client/s/c$e;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/roblox/client/s/c$e;->f:[Lcom/roblox/client/s/c$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/s/c$e;
    .locals 1

    .line 103
    const-class v0, Lcom/roblox/client/s/c$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/s/c$e;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/s/c$e;
    .locals 1

    .line 103
    sget-object v0, Lcom/roblox/client/s/c$e;->f:[Lcom/roblox/client/s/c$e;

    invoke-virtual {v0}, [Lcom/roblox/client/s/c$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/s/c$e;

    return-object v0
.end method
