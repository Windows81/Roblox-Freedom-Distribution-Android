.class public final enum Lcom/roblox/client/s/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/s/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/s/c$b;

.field public static final enum b:Lcom/roblox/client/s/c$b;

.field public static final enum c:Lcom/roblox/client/s/c$b;

.field private static final synthetic d:[Lcom/roblox/client/s/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 97
    new-instance v0, Lcom/roblox/client/s/c$b;

    const-string v1, "APP_INIT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/s/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$b;->a:Lcom/roblox/client/s/c$b;

    .line 98
    new-instance v0, Lcom/roblox/client/s/c$b;

    const-string v1, "APP_INIT_TYPE_SHELL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/s/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    .line 99
    new-instance v0, Lcom/roblox/client/s/c$b;

    const-string v1, "APP_INIT_TYPE_GAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/s/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/s/c$b;->c:Lcom/roblox/client/s/c$b;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/roblox/client/s/c$b;

    .line 96
    sget-object v5, Lcom/roblox/client/s/c$b;->a:Lcom/roblox/client/s/c$b;

    aput-object v5, v1, v2

    sget-object v2, Lcom/roblox/client/s/c$b;->b:Lcom/roblox/client/s/c$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/roblox/client/s/c$b;->d:[Lcom/roblox/client/s/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/s/c$b;
    .locals 1

    .line 96
    const-class v0, Lcom/roblox/client/s/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/s/c$b;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/s/c$b;
    .locals 1

    .line 96
    sget-object v0, Lcom/roblox/client/s/c$b;->d:[Lcom/roblox/client/s/c$b;

    invoke-virtual {v0}, [Lcom/roblox/client/s/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/s/c$b;

    return-object v0
.end method
