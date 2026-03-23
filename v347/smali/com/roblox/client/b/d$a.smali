.class final enum Lcom/roblox/client/b/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/b/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/b/d$a;

.field public static final enum b:Lcom/roblox/client/b/d$a;

.field public static final enum c:Lcom/roblox/client/b/d$a;

.field public static final enum d:Lcom/roblox/client/b/d$a;

.field public static final enum e:Lcom/roblox/client/b/d$a;

.field public static final enum f:Lcom/roblox/client/b/d$a;

.field public static final enum g:Lcom/roblox/client/b/d$a;

.field public static final enum h:Lcom/roblox/client/b/d$a;

.field public static final enum i:Lcom/roblox/client/b/d$a;

.field public static final enum j:Lcom/roblox/client/b/d$a;

.field private static final synthetic k:[Lcom/roblox/client/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->a:Lcom/roblox/client/b/d$a;

    .line 32
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_UI_PAUSED_BY_USER"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->b:Lcom/roblox/client/b/d$a;

    .line 34
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_INIT_STARTING"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->c:Lcom/roblox/client/b/d$a;

    .line 35
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_INIT_DONE_OK"

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->d:Lcom/roblox/client/b/d$a;

    .line 36
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_INIT_STOPPED"

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->e:Lcom/roblox/client/b/d$a;

    .line 38
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_SESSION_CHECK_DONE_OK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->f:Lcom/roblox/client/b/d$a;

    .line 39
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_SESSION_CHECK_STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->g:Lcom/roblox/client/b/d$a;

    .line 41
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_POST_LOGIN_DONE_OK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->h:Lcom/roblox/client/b/d$a;

    .line 43
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_UI_HOME_STARTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    .line 44
    new-instance v0, Lcom/roblox/client/b/d$a;

    const-string v1, "LAUNCH_STATE_UI_HOME_LOADED_OK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/b/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/b/d$a;->j:Lcom/roblox/client/b/d$a;

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/roblox/client/b/d$a;

    sget-object v1, Lcom/roblox/client/b/d$a;->a:Lcom/roblox/client/b/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/b/d$a;->b:Lcom/roblox/client/b/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/b/d$a;->c:Lcom/roblox/client/b/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/b/d$a;->d:Lcom/roblox/client/b/d$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/b/d$a;->e:Lcom/roblox/client/b/d$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/roblox/client/b/d$a;->f:Lcom/roblox/client/b/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/client/b/d$a;->g:Lcom/roblox/client/b/d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/client/b/d$a;->h:Lcom/roblox/client/b/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/client/b/d$a;->i:Lcom/roblox/client/b/d$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/roblox/client/b/d$a;->j:Lcom/roblox/client/b/d$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/b/d$a;->k:[Lcom/roblox/client/b/d$a;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/b/d$a;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/roblox/client/b/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/b/d$a;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/b/d$a;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/roblox/client/b/d$a;->k:[Lcom/roblox/client/b/d$a;

    invoke-virtual {v0}, [Lcom/roblox/client/b/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/b/d$a;

    return-object v0
.end method
