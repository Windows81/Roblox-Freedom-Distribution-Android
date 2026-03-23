.class public Lcom/roblox/client/t/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/t/f$a;


# instance fields
.field private a:Lcom/roblox/client/v;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Lcom/roblox/client/ab/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/v;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/roblox/client/t/h;->a:Lcom/roblox/client/v;

    .line 34
    sget v0, Lcom/roblox/client/o$j;->Search_GlobalSearch_Example_SearchGames:I

    invoke-virtual {p1, v0}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/h;->c:Ljava/lang/String;

    .line 35
    iget-object p1, p0, Lcom/roblox/client/t/h;->a:Lcom/roblox/client/v;

    sget v0, Lcom/roblox/client/o$j;->Search_GlobalSearch_Example_SearchPlayers:I

    invoke-virtual {p1, v0}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/h;->d:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/roblox/client/t/h;->a:Lcom/roblox/client/v;

    sget v0, Lcom/roblox/client/o$j;->Search_GlobalSearch_Example_SearchCatalog:I

    invoke-virtual {p1, v0}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/h;->e:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/roblox/client/t/h;->a:Lcom/roblox/client/v;

    sget v0, Lcom/roblox/client/o$j;->Search_GlobalSearch_Example_SearchGroups:I

    invoke-virtual {p1, v0}, Lcom/roblox/client/v;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/t/h;->f:Ljava/lang/String;

    .line 39
    new-instance p1, Lcom/roblox/client/ab/f;

    invoke-direct {p1}, Lcom/roblox/client/ab/f;-><init>()V

    iput-object p1, p0, Lcom/roblox/client/t/h;->g:Lcom/roblox/client/ab/c;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/roblox/client/t/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/roblox/client/t/h;->a:Lcom/roblox/client/v;

    invoke-virtual {v0}, Lcom/roblox/client/v;->as()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/roblox/client/t/h;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/roblox/client/t/h;->c:Ljava/lang/String;

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/t/h;->f:Ljava/lang/String;

    return-object v0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/t/h;->e:Ljava/lang/String;

    return-object v0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/roblox/client/t/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)Z
    .locals 2

    .line 90
    new-instance v0, Lcom/roblox/client/l/p;

    invoke-virtual {p0}, Lcom/roblox/client/t/h;->b()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/roblox/client/l/p;-><init>(ILjava/lang/String;)V

    .line 91
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onActionViewCollapsed()V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/roblox/client/t/h;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    const-string v2, "profile"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "friends"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "users"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "games"

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "catalog"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const-string v2, "groups"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/roblox/client/t/h;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/roblox/client/ab/e;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/roblox/client/t/h;->g:Lcom/roblox/client/ab/c;

    invoke-interface {v0}, Lcom/roblox/client/ab/c;->c()Lcom/roblox/client/ab/e;

    move-result-object v0

    return-object v0
.end method
