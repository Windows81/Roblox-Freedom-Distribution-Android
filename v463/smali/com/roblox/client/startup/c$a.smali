.class final enum Lcom/roblox/client/startup/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/startup/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/startup/c$a;

.field public static final enum b:Lcom/roblox/client/startup/c$a;

.field public static final enum c:Lcom/roblox/client/startup/c$a;

.field public static final enum d:Lcom/roblox/client/startup/c$a;

.field public static final enum e:Lcom/roblox/client/startup/c$a;

.field public static final enum f:Lcom/roblox/client/startup/c$a;

.field public static final enum g:Lcom/roblox/client/startup/c$a;

.field public static final enum h:Lcom/roblox/client/startup/c$a;

.field public static final enum i:Lcom/roblox/client/startup/c$a;

.field private static final synthetic j:[Lcom/roblox/client/startup/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 77
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    .line 78
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    .line 79
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_SETTINGS_LOADED_OK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->c:Lcom/roblox/client/startup/c$a;

    .line 80
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_DONE_OK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    .line 81
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_NO_USER_ID"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    .line 82
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_UNAUTHORIZED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    .line 83
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_SERVICE_UNAVAILABLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->g:Lcom/roblox/client/startup/c$a;

    .line 84
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_FAILED_BTID"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    .line 85
    new-instance v0, Lcom/roblox/client/startup/c$a;

    const-string v1, "INIT_STATE_FAILED_APP_SETTINGS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/roblox/client/startup/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/startup/c$a;->i:Lcom/roblox/client/startup/c$a;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/roblox/client/startup/c$a;

    .line 76
    sget-object v11, Lcom/roblox/client/startup/c$a;->a:Lcom/roblox/client/startup/c$a;

    aput-object v11, v1, v2

    sget-object v2, Lcom/roblox/client/startup/c$a;->b:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/startup/c$a;->c:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/startup/c$a;->d:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/startup/c$a;->e:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/roblox/client/startup/c$a;->f:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/roblox/client/startup/c$a;->g:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v8

    sget-object v2, Lcom/roblox/client/startup/c$a;->h:Lcom/roblox/client/startup/c$a;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/roblox/client/startup/c$a;->j:[Lcom/roblox/client/startup/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/startup/c$a;
    .locals 1

    .line 76
    const-class v0, Lcom/roblox/client/startup/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/startup/c$a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/startup/c$a;
    .locals 1

    .line 76
    sget-object v0, Lcom/roblox/client/startup/c$a;->j:[Lcom/roblox/client/startup/c$a;

    invoke-virtual {v0}, [Lcom/roblox/client/startup/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/startup/c$a;

    return-object v0
.end method
