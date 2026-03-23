.class public final enum Lcom/roblox/client/routing/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/routing/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/routing/c;

.field public static final enum b:Lcom/roblox/client/routing/c;

.field public static final enum c:Lcom/roblox/client/routing/c;

.field public static final enum d:Lcom/roblox/client/routing/c;

.field public static final enum e:Lcom/roblox/client/routing/c;

.field public static final enum f:Lcom/roblox/client/routing/c;

.field public static final enum g:Lcom/roblox/client/routing/c;

.field public static final enum h:Lcom/roblox/client/routing/c;

.field public static final enum i:Lcom/roblox/client/routing/c;

.field private static final synthetic l:[Lcom/roblox/client/routing/c;


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 6
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const-string v3, "HOME_TAG"

    invoke-direct {v0, v1, v2, v3}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->a:Lcom/roblox/client/routing/c;

    .line 7
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "GAMES"

    const/4 v3, 0x1

    const-string v4, "GAMES_TAG"

    invoke-direct {v0, v1, v3, v4}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->b:Lcom/roblox/client/routing/c;

    .line 8
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "AVATAR"

    const/4 v4, 0x2

    const-string v5, "AVATAR_EDITOR_TAG"

    invoke-direct {v0, v1, v4, v5}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->c:Lcom/roblox/client/routing/c;

    .line 9
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "MORE"

    const/4 v5, 0x3

    const-string v6, "MORE_TAG"

    invoke-direct {v0, v1, v5, v6}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->d:Lcom/roblox/client/routing/c;

    .line 10
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "gameId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "GAME_DETAILS"

    const/4 v7, 0x4

    const-string v8, "GAME_DETAILS_TAG"

    invoke-direct {v0, v6, v7, v8, v1}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->e:Lcom/roblox/client/routing/c;

    .line 11
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "userId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "PROFILE"

    const/4 v8, 0x5

    const-string v9, "PROFILE_TAG"

    invoke-direct {v0, v6, v8, v9, v1}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->f:Lcom/roblox/client/routing/c;

    .line 12
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "CATALOG"

    const/4 v6, 0x6

    const-string v9, "CATALOG_TAG"

    invoke-direct {v0, v1, v6, v9}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->g:Lcom/roblox/client/routing/c;

    .line 13
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "FRIENDS"

    const/4 v9, 0x7

    const-string v10, "FRIENDS_TAG"

    invoke-direct {v0, v1, v9, v10}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->h:Lcom/roblox/client/routing/c;

    .line 14
    new-instance v0, Lcom/roblox/client/routing/c;

    const-string v1, "UNKNOWN"

    const/16 v10, 0x8

    const-string v11, "unknown"

    invoke-direct {v0, v1, v10, v11}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/roblox/client/routing/c;->i:Lcom/roblox/client/routing/c;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/roblox/client/routing/c;

    .line 5
    sget-object v11, Lcom/roblox/client/routing/c;->a:Lcom/roblox/client/routing/c;

    aput-object v11, v1, v2

    sget-object v2, Lcom/roblox/client/routing/c;->b:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/routing/c;->c:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/routing/c;->d:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/routing/c;->e:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v7

    sget-object v2, Lcom/roblox/client/routing/c;->f:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v8

    sget-object v2, Lcom/roblox/client/routing/c;->g:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v6

    sget-object v2, Lcom/roblox/client/routing/c;->h:Lcom/roblox/client/routing/c;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lcom/roblox/client/routing/c;->l:[Lcom/roblox/client/routing/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/roblox/client/routing/c;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/roblox/client/routing/c;->j:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/roblox/client/routing/c;->k:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/routing/c;
    .locals 1

    .line 5
    const-class v0, Lcom/roblox/client/routing/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/routing/c;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/routing/c;
    .locals 1

    .line 5
    sget-object v0, Lcom/roblox/client/routing/c;->l:[Lcom/roblox/client/routing/c;

    invoke-virtual {v0}, [Lcom/roblox/client/routing/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/routing/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/roblox/client/routing/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/roblox/client/routing/c;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/roblox/client/routing/c;->k:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
