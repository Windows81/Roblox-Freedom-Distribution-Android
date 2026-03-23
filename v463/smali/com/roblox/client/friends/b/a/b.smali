.class public Lcom/roblox/client/friends/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/roblox/client/friends/b/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/roblox/client/friends/b/a/a;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/roblox/client/friends/b/a/b;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/roblox/client/friends/b/a/b;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/roblox/client/friends/b/a/b;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/roblox/client/friends/b/a/b;->d:Landroid/content/Context;

    .line 28
    iput-object p5, p0, Lcom/roblox/client/friends/b/a/b;->e:Lcom/roblox/client/friends/b/a/a;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/friends/b/a/b;)Lcom/roblox/client/friends/b/a/a;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/roblox/client/friends/b/a/b;->e:Lcom/roblox/client/friends/b/a/a;

    return-object p0
.end method


# virtual methods
.method public a()Lio/chirp/connect/ChirpConnect;
    .locals 4

    .line 32
    new-instance v0, Lio/chirp/connect/ChirpConnect;

    iget-object v1, p0, Lcom/roblox/client/friends/b/a/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/roblox/client/friends/b/a/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/roblox/client/friends/b/a/b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lio/chirp/connect/ChirpConnect;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/b;->e:Lcom/roblox/client/friends/b/a/a;

    invoke-virtual {v1}, Lcom/roblox/client/friends/b/a/a;->b()V

    .line 34
    iget-object v1, p0, Lcom/roblox/client/friends/b/a/b;->c:Ljava/lang/String;

    new-instance v2, Lcom/roblox/client/friends/b/a/b$1;

    invoke-direct {v2, p0}, Lcom/roblox/client/friends/b/a/b$1;-><init>(Lcom/roblox/client/friends/b/a/b;)V

    invoke-virtual {v0, v1, v2}, Lio/chirp/connect/ChirpConnect;->setConfig(Ljava/lang/String;Lio/chirp/connect/interfaces/ConnectSetConfigListener;)V

    return-object v0
.end method
