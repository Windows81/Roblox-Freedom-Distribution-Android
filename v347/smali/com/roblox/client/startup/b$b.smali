.class final enum Lcom/roblox/client/startup/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/startup/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/startup/b$b;

.field public static final enum b:Lcom/roblox/client/startup/b$b;

.field public static final enum c:Lcom/roblox/client/startup/b$b;

.field public static final enum d:Lcom/roblox/client/startup/b$b;

.field public static final enum e:Lcom/roblox/client/startup/b$b;

.field public static final enum f:Lcom/roblox/client/startup/b$b;

.field public static final enum g:Lcom/roblox/client/startup/b$b;

.field public static final enum h:Lcom/roblox/client/startup/b$b;

.field public static final enum i:Lcom/roblox/client/startup/b$b;

.field private static final synthetic j:[Lcom/roblox/client/startup/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->a:Lcom/roblox/client/startup/b$b;

    .line 61
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->b:Lcom/roblox/client/startup/b$b;

    .line 62
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_DONE_OK"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->c:Lcom/roblox/client/startup/b$b;

    .line 63
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_NO_USER_ID"

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    .line 64
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_UNAUTHORIZED"

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->e:Lcom/roblox/client/startup/b$b;

    .line 65
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_SERVICE_UNAVAILABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->f:Lcom/roblox/client/startup/b$b;

    .line 66
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_FAILED_BTID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->g:Lcom/roblox/client/startup/b$b;

    .line 67
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_FAILED_APP_SETTINGS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->h:Lcom/roblox/client/startup/b$b;

    .line 68
    new-instance v0, Lcom/roblox/client/startup/b$b;

    const-string v1, "INIT_STATE_UPGRADE_NEEDED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/startup/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/b$b;->i:Lcom/roblox/client/startup/b$b;

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/roblox/client/startup/b$b;

    sget-object v1, Lcom/roblox/client/startup/b$b;->a:Lcom/roblox/client/startup/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/startup/b$b;->b:Lcom/roblox/client/startup/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/startup/b$b;->c:Lcom/roblox/client/startup/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/startup/b$b;->d:Lcom/roblox/client/startup/b$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/startup/b$b;->e:Lcom/roblox/client/startup/b$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/roblox/client/startup/b$b;->f:Lcom/roblox/client/startup/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/client/startup/b$b;->g:Lcom/roblox/client/startup/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/client/startup/b$b;->h:Lcom/roblox/client/startup/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/client/startup/b$b;->i:Lcom/roblox/client/startup/b$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/startup/b$b;->j:[Lcom/roblox/client/startup/b$b;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/startup/b$b;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/roblox/client/startup/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/b$b;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/startup/b$b;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/roblox/client/startup/b$b;->j:[Lcom/roblox/client/startup/b$b;

    invoke-virtual {v0}, [Lcom/roblox/client/startup/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/startup/b$b;

    return-object v0
.end method
