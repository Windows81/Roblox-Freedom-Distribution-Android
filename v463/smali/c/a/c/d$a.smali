.class public Lc/a/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Ld/e;

.field private d:Ld/d;

.field private e:Lc/a/c/d$b;

.field private f:Lc/y;

.field private g:Lc/a/c/m;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    sget-object v0, Lc/a/c/d$b;->j:Lc/a/c/d$b;

    iput-object v0, p0, Lc/a/c/d$a;->e:Lc/a/c/d$b;

    .line 524
    sget-object v0, Lc/y;->c:Lc/y;

    iput-object v0, p0, Lc/a/c/d$a;->f:Lc/y;

    .line 525
    sget-object v0, Lc/a/c/m;->a:Lc/a/c/m;

    iput-object v0, p0, Lc/a/c/d$a;->g:Lc/a/c/m;

    .line 533
    iput-boolean p1, p0, Lc/a/c/d$a;->h:Z

    return-void
.end method

.method static synthetic a(Lc/a/c/d$a;)Lc/y;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->f:Lc/y;

    return-object p0
.end method

.method static synthetic b(Lc/a/c/d$a;)Lc/a/c/m;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->g:Lc/a/c/m;

    return-object p0
.end method

.method static synthetic c(Lc/a/c/d$a;)Z
    .locals 0

    .line 518
    iget-boolean p0, p0, Lc/a/c/d$a;->h:Z

    return p0
.end method

.method static synthetic d(Lc/a/c/d$a;)Lc/a/c/d$b;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->e:Lc/a/c/d$b;

    return-object p0
.end method

.method static synthetic e(Lc/a/c/d$a;)Ljava/lang/String;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lc/a/c/d$a;)Ljava/net/Socket;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->a:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic g(Lc/a/c/d$a;)Ld/d;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->d:Ld/d;

    return-object p0
.end method

.method static synthetic h(Lc/a/c/d$a;)Ld/e;
    .locals 0

    .line 518
    iget-object p0, p0, Lc/a/c/d$a;->c:Ld/e;

    return-object p0
.end method


# virtual methods
.method public a(Lc/a/c/d$b;)Lc/a/c/d$a;
    .locals 0

    .line 551
    iput-object p1, p0, Lc/a/c/d$a;->e:Lc/a/c/d$b;

    return-object p0
.end method

.method public a(Lc/y;)Lc/a/c/d$a;
    .locals 0

    .line 556
    iput-object p1, p0, Lc/a/c/d$a;->f:Lc/y;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Ld/e;Ld/d;)Lc/a/c/d$a;
    .locals 0

    .line 543
    iput-object p1, p0, Lc/a/c/d$a;->a:Ljava/net/Socket;

    .line 544
    iput-object p2, p0, Lc/a/c/d$a;->b:Ljava/lang/String;

    .line 545
    iput-object p3, p0, Lc/a/c/d$a;->c:Ld/e;

    .line 546
    iput-object p4, p0, Lc/a/c/d$a;->d:Ld/d;

    return-object p0
.end method

.method public a()Lc/a/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    new-instance v0, Lc/a/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/a/c/d;-><init>(Lc/a/c/d$a;Lc/a/c/d$1;)V

    return-object v0
.end method
