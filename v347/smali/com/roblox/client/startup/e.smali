.class public final enum Lcom/roblox/client/startup/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/startup/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/startup/e;

.field public static final enum b:Lcom/roblox/client/startup/e;

.field public static final enum c:Lcom/roblox/client/startup/e;

.field public static final enum d:Lcom/roblox/client/startup/e;

.field public static final enum e:Lcom/roblox/client/startup/e;

.field public static final enum f:Lcom/roblox/client/startup/e;

.field public static final enum g:Lcom/roblox/client/startup/e;

.field public static final enum h:Lcom/roblox/client/startup/e;

.field public static final enum i:Lcom/roblox/client/startup/e;

.field public static final enum j:Lcom/roblox/client/startup/e;

.field public static final enum k:Lcom/roblox/client/startup/e;

.field private static final synthetic m:[Lcom/roblox/client/startup/e;


# instance fields
.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v4, v4}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    .line 11
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "SHELL_PROCESS_RESTART"

    invoke-direct {v0, v1, v5, v5}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->b:Lcom/roblox/client/startup/e;

    .line 12
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "SHELL_PROCESS_RESTART_FOR_RESULT"

    invoke-direct {v0, v1, v6, v6}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    .line 13
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "APP_RESTART"

    invoke-direct {v0, v1, v7, v7}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->d:Lcom/roblox/client/startup/e;

    .line 14
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "AFTER_SIGN_UP"

    invoke-direct {v0, v1, v8, v8}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    .line 15
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "AFTER_LOGIN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->f:Lcom/roblox/client/startup/e;

    .line 16
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "PROTOCOL_LAUNCH"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    .line 17
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "LOG_OUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->h:Lcom/roblox/client/startup/e;

    .line 18
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "REMINDER_NOTIFICATION"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    .line 19
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "LOADED_FROM_PUSH_NOTIFICATION"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->j:Lcom/roblox/client/startup/e;

    .line 20
    new-instance v0, Lcom/roblox/client/startup/e;

    const-string v1, "AFTER_LOGIN_FOR_RESULT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/startup/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/roblox/client/startup/e;->k:Lcom/roblox/client/startup/e;

    .line 9
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/roblox/client/startup/e;

    sget-object v1, Lcom/roblox/client/startup/e;->a:Lcom/roblox/client/startup/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/startup/e;->b:Lcom/roblox/client/startup/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/startup/e;->c:Lcom/roblox/client/startup/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/startup/e;->d:Lcom/roblox/client/startup/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/roblox/client/startup/e;->e:Lcom/roblox/client/startup/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/roblox/client/startup/e;->f:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/client/startup/e;->g:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/client/startup/e;->h:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/client/startup/e;->i:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/roblox/client/startup/e;->j:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/roblox/client/startup/e;->k:Lcom/roblox/client/startup/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/startup/e;->m:[Lcom/roblox/client/startup/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/roblox/client/startup/e;->l:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/startup/e;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/roblox/client/startup/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/startup/e;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/startup/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/roblox/client/startup/e;->m:[Lcom/roblox/client/startup/e;

    invoke-virtual {v0}, [Lcom/roblox/client/startup/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/startup/e;

    return-object v0
.end method
