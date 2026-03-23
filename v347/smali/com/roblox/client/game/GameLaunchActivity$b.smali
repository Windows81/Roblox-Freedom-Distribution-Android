.class final enum Lcom/roblox/client/game/GameLaunchActivity$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/GameLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/game/GameLaunchActivity$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/game/GameLaunchActivity$b;

.field public static final enum b:Lcom/roblox/client/game/GameLaunchActivity$b;

.field public static final enum c:Lcom/roblox/client/game/GameLaunchActivity$b;

.field public static final enum d:Lcom/roblox/client/game/GameLaunchActivity$b;

.field public static final enum e:Lcom/roblox/client/game/GameLaunchActivity$b;

.field private static final synthetic f:[Lcom/roblox/client/game/GameLaunchActivity$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    const-string v1, "GAME_STATE_INIT"

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/game/GameLaunchActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->a:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 55
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    const-string v1, "GAME_STATE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/game/GameLaunchActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->b:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 56
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    const-string v1, "GAME_STATE_ENDED"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/game/GameLaunchActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->c:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 57
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    const-string v1, "GAME_STATE_PROCESS_KILLED"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/game/GameLaunchActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->d:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 58
    new-instance v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    const-string v1, "GAME_STATE_FAILED_RETRY_NEEDED"

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/game/GameLaunchActivity$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->e:Lcom/roblox/client/game/GameLaunchActivity$b;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/roblox/client/game/GameLaunchActivity$b;

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->a:Lcom/roblox/client/game/GameLaunchActivity$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->b:Lcom/roblox/client/game/GameLaunchActivity$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->c:Lcom/roblox/client/game/GameLaunchActivity$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->d:Lcom/roblox/client/game/GameLaunchActivity$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/game/GameLaunchActivity$b;->e:Lcom/roblox/client/game/GameLaunchActivity$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->f:[Lcom/roblox/client/game/GameLaunchActivity$b;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/game/GameLaunchActivity$b;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/game/GameLaunchActivity$b;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/game/GameLaunchActivity$b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/roblox/client/game/GameLaunchActivity$b;->f:[Lcom/roblox/client/game/GameLaunchActivity$b;

    invoke-virtual {v0}, [Lcom/roblox/client/game/GameLaunchActivity$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/game/GameLaunchActivity$b;

    return-object v0
.end method
