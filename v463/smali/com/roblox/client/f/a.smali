.class public final enum Lcom/roblox/client/f/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/f/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/f/a;

.field public static final enum b:Lcom/roblox/client/f/a;

.field public static final enum c:Lcom/roblox/client/f/a;

.field public static final enum d:Lcom/roblox/client/f/a;

.field public static final enum e:Lcom/roblox/client/f/a;

.field private static final synthetic h:[Lcom/roblox/client/f/a;


# instance fields
.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/roblox/client/f/a;

    const-string v1, "GetPing"

    const/4 v2, 0x0

    const-string v3, "ping.get"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/roblox/client/f/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/f/a;->a:Lcom/roblox/client/f/a;

    .line 8
    new-instance v0, Lcom/roblox/client/f/a;

    const-string v1, "GetConfig"

    const-string v3, "config.get"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/roblox/client/f/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/f/a;->b:Lcom/roblox/client/f/a;

    .line 9
    new-instance v0, Lcom/roblox/client/f/a;

    const-string v1, "PostConfig"

    const-string v3, "config.post"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v3, v6}, Lcom/roblox/client/f/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/f/a;->c:Lcom/roblox/client/f/a;

    .line 10
    new-instance v0, Lcom/roblox/client/f/a;

    const-string v1, "GetUserAgent"

    const-string v3, "ua.get"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v3, v7}, Lcom/roblox/client/f/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/f/a;->d:Lcom/roblox/client/f/a;

    .line 11
    new-instance v0, Lcom/roblox/client/f/a;

    const-string v1, "GetDevRpcIpAndPort"

    const-string v3, "devrpc.get"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v3, v8}, Lcom/roblox/client/f/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/f/a;->e:Lcom/roblox/client/f/a;

    new-array v1, v8, [Lcom/roblox/client/f/a;

    .line 6
    sget-object v3, Lcom/roblox/client/f/a;->a:Lcom/roblox/client/f/a;

    aput-object v3, v1, v2

    sget-object v2, Lcom/roblox/client/f/a;->b:Lcom/roblox/client/f/a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/roblox/client/f/a;->c:Lcom/roblox/client/f/a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/roblox/client/f/a;->d:Lcom/roblox/client/f/a;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/roblox/client/f/a;->h:[Lcom/roblox/client/f/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/roblox/client/f/a;->f:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/roblox/client/f/a;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/f/a;
    .locals 1

    .line 6
    const-class v0, Lcom/roblox/client/f/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/f/a;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/f/a;
    .locals 1

    .line 6
    sget-object v0, Lcom/roblox/client/f/a;->h:[Lcom/roblox/client/f/a;

    invoke-virtual {v0}, [Lcom/roblox/client/f/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/f/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/roblox/client/f/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/roblox/client/f/a;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
