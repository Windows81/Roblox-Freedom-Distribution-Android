.class public final enum Lcom/roblox/client/l/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/roblox/client/l/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/l/d;

.field public static final enum b:Lcom/roblox/client/l/d;

.field public static final enum c:Lcom/roblox/client/l/d;

.field public static final enum d:Lcom/roblox/client/l/d;

.field public static final enum e:Lcom/roblox/client/l/d;

.field public static final enum f:Lcom/roblox/client/l/d;

.field public static final enum g:Lcom/roblox/client/l/d;

.field public static final enum h:Lcom/roblox/client/l/d;

.field public static final enum i:Lcom/roblox/client/l/d;

.field public static final enum j:Lcom/roblox/client/l/d;

.field public static final enum k:Lcom/roblox/client/l/d;

.field private static final synthetic l:[Lcom/roblox/client/l/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->a:Lcom/roblox/client/l/d;

    .line 11
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->b:Lcom/roblox/client/l/d;

    .line 12
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_RESUME"

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->c:Lcom/roblox/client/l/d;

    .line 13
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->d:Lcom/roblox/client/l/d;

    .line 14
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_STOP"

    invoke-direct {v0, v1, v7}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->e:Lcom/roblox/client/l/d;

    .line 15
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->f:Lcom/roblox/client/l/d;

    .line 18
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_ATTACH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->g:Lcom/roblox/client/l/d;

    .line 19
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_CREATE_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->h:Lcom/roblox/client/l/d;

    .line 20
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_ACTIVITY_CREATED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->i:Lcom/roblox/client/l/d;

    .line 21
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_DESTROY_VIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->j:Lcom/roblox/client/l/d;

    .line 22
    new-instance v0, Lcom/roblox/client/l/d;

    const-string v1, "ON_DETACH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/l/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/l/d;->k:Lcom/roblox/client/l/d;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/roblox/client/l/d;

    sget-object v1, Lcom/roblox/client/l/d;->a:Lcom/roblox/client/l/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/roblox/client/l/d;->b:Lcom/roblox/client/l/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/roblox/client/l/d;->c:Lcom/roblox/client/l/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/roblox/client/l/d;->d:Lcom/roblox/client/l/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/roblox/client/l/d;->e:Lcom/roblox/client/l/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/roblox/client/l/d;->f:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/roblox/client/l/d;->g:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/roblox/client/l/d;->h:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/roblox/client/l/d;->i:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/roblox/client/l/d;->j:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/roblox/client/l/d;->k:Lcom/roblox/client/l/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/roblox/client/l/d;->l:[Lcom/roblox/client/l/d;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/l/d;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/roblox/client/l/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/l/d;

    return-object v0
.end method

.method public static values()[Lcom/roblox/client/l/d;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/roblox/client/l/d;->l:[Lcom/roblox/client/l/d;

    invoke-virtual {v0}, [Lcom/roblox/client/l/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/l/d;

    return-object v0
.end method
