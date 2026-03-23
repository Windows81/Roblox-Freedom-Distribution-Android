.class public Lcom/roblox/client/provider/ShellConfigurationContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/UriMatcher;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/roblox/client/provider/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/roblox/client/f/d;

.field private e:Lcom/roblox/client/f/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-string v0, "rbx.config"

    .line 25
    iput-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->c:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/roblox/client/provider/a/e$a;->a:Lcom/roblox/client/provider/a/e$a;

    invoke-interface {p2, v0}, Lcom/roblox/client/provider/a/e;->a(Lcom/roblox/client/provider/a/e$a;)Lcom/roblox/client/f/a;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;Lcom/roblox/client/f/a;)V

    .line 58
    sget-object v0, Lcom/roblox/client/provider/a/e$a;->b:Lcom/roblox/client/provider/a/e$a;

    invoke-interface {p2, v0}, Lcom/roblox/client/provider/a/e;->a(Lcom/roblox/client/provider/a/e$a;)Lcom/roblox/client/f/a;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;Lcom/roblox/client/f/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;Lcom/roblox/client/f/a;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 63
    iget-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->b:Landroid/content/UriMatcher;

    iget-object v1, p3, Lcom/roblox/client/f/a;->f:Ljava/lang/String;

    iget v2, p3, Lcom/roblox/client/f/a;->g:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    iget-object p1, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->c:Landroid/util/SparseArray;

    iget p3, p3, Lcom/roblox/client/f/a;->g:I

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 47
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->b:Landroid/content/UriMatcher;

    .line 48
    invoke-virtual {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/roblox/client/provider/a/d;

    invoke-direct {v1}, Lcom/roblox/client/provider/a/d;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;)V

    .line 51
    new-instance v1, Lcom/roblox/client/provider/a/b;

    invoke-virtual {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/roblox/client/provider/a/b;-><init>(Lcom/roblox/client/provider/ShellConfigurationContentProvider;Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;)V

    .line 52
    new-instance v1, Lcom/roblox/client/provider/a/f;

    invoke-virtual {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/provider/a/f;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;)V

    .line 53
    new-instance v1, Lcom/roblox/client/provider/a/c;

    invoke-virtual {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/roblox/client/provider/a/c;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->a(Ljava/lang/String;Lcom/roblox/client/provider/a/e;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/f/d;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->d:Lcom/roblox/client/f/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/roblox/client/o$j;->shell_configuration_provider_authority_suffix:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/roblox/client/f/d$a;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->e:Lcom/roblox/client/f/d$a;

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/provider/a/e;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1, p2}, Lcom/roblox/client/provider/a/e;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :cond_0
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->c()V

    .line 71
    new-instance v0, Lcom/roblox/client/provider/c;

    invoke-virtual {p0}, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/roblox/client/provider/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->e:Lcom/roblox/client/f/d$a;

    .line 72
    invoke-interface {v0}, Lcom/roblox/client/f/d$a;->a()Lcom/roblox/client/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->d:Lcom/roblox/client/f/d;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 79
    iget-object p2, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 80
    iget-object p3, p0, Lcom/roblox/client/provider/ShellConfigurationContentProvider;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/roblox/client/provider/a/e;

    if-eqz p2, :cond_0

    .line 82
    invoke-interface {p2, p1}, Lcom/roblox/client/provider/a/e;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
