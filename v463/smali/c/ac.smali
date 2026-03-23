.class public final Lc/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/ac$a;
    }
.end annotation


# instance fields
.field private final a:Lc/aa;

.field private final b:Lc/y;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lc/r;

.field private final f:Lc/s;

.field private final g:Lc/ad;

.field private final h:Lc/ac;

.field private final i:Lc/ac;

.field private final j:Lc/ac;

.field private final k:J

.field private final l:J

.field private volatile m:Lc/d;


# direct methods
.method private constructor <init>(Lc/ac$a;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lc/ac$a;->a(Lc/ac$a;)Lc/aa;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->a:Lc/aa;

    .line 60
    invoke-static {p1}, Lc/ac$a;->b(Lc/ac$a;)Lc/y;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->b:Lc/y;

    .line 61
    invoke-static {p1}, Lc/ac$a;->c(Lc/ac$a;)I

    move-result v0

    iput v0, p0, Lc/ac;->c:I

    .line 62
    invoke-static {p1}, Lc/ac$a;->d(Lc/ac$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lc/ac$a;->e(Lc/ac$a;)Lc/r;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->e:Lc/r;

    .line 64
    invoke-static {p1}, Lc/ac$a;->f(Lc/ac$a;)Lc/s$a;

    move-result-object v0

    invoke-virtual {v0}, Lc/s$a;->a()Lc/s;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->f:Lc/s;

    .line 65
    invoke-static {p1}, Lc/ac$a;->g(Lc/ac$a;)Lc/ad;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->g:Lc/ad;

    .line 66
    invoke-static {p1}, Lc/ac$a;->h(Lc/ac$a;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->h:Lc/ac;

    .line 67
    invoke-static {p1}, Lc/ac$a;->i(Lc/ac$a;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->i:Lc/ac;

    .line 68
    invoke-static {p1}, Lc/ac$a;->j(Lc/ac$a;)Lc/ac;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->j:Lc/ac;

    .line 69
    invoke-static {p1}, Lc/ac$a;->k(Lc/ac$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/ac;->k:J

    .line 70
    invoke-static {p1}, Lc/ac$a;->l(Lc/ac$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lc/ac;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lc/ac$a;Lc/ac$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lc/ac;-><init>(Lc/ac$a;)V

    return-void
.end method

.method static synthetic a(Lc/ac;)Lc/aa;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->a:Lc/aa;

    return-object p0
.end method

.method static synthetic b(Lc/ac;)Lc/y;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->b:Lc/y;

    return-object p0
.end method

.method static synthetic c(Lc/ac;)I
    .locals 0

    .line 42
    iget p0, p0, Lc/ac;->c:I

    return p0
.end method

.method static synthetic d(Lc/ac;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lc/ac;)Lc/r;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->e:Lc/r;

    return-object p0
.end method

.method static synthetic f(Lc/ac;)Lc/s;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->f:Lc/s;

    return-object p0
.end method

.method static synthetic g(Lc/ac;)Lc/ad;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->g:Lc/ad;

    return-object p0
.end method

.method static synthetic h(Lc/ac;)Lc/ac;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->h:Lc/ac;

    return-object p0
.end method

.method static synthetic i(Lc/ac;)Lc/ac;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->i:Lc/ac;

    return-object p0
.end method

.method static synthetic j(Lc/ac;)Lc/ac;
    .locals 0

    .line 42
    iget-object p0, p0, Lc/ac;->j:Lc/ac;

    return-object p0
.end method

.method static synthetic k(Lc/ac;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lc/ac;->k:J

    return-wide v0
.end method

.method static synthetic l(Lc/ac;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lc/ac;->l:J

    return-wide v0
.end method


# virtual methods
.method public a()Lc/aa;
    .locals 1

    .line 86
    iget-object v0, p0, Lc/ac;->a:Lc/aa;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lc/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lc/ac;->f:Lc/s;

    invoke-virtual {v0, p1}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public b()I
    .locals 1

    .line 98
    iget v0, p0, Lc/ac;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    .line 106
    iget v0, p0, Lc/ac;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 1

    .line 269
    iget-object v0, p0, Lc/ac;->g:Lc/ad;

    invoke-virtual {v0}, Lc/ad;->close()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lc/ac;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lc/r;
    .locals 1

    .line 119
    iget-object v0, p0, Lc/ac;->e:Lc/r;

    return-object v0
.end method

.method public f()Lc/s;
    .locals 1

    .line 136
    iget-object v0, p0, Lc/ac;->f:Lc/s;

    return-object v0
.end method

.method public g()Lc/ad;
    .locals 1

    .line 172
    iget-object v0, p0, Lc/ac;->g:Lc/ad;

    return-object v0
.end method

.method public h()Lc/ac$a;
    .locals 2

    .line 176
    new-instance v0, Lc/ac$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/ac$a;-><init>(Lc/ac;Lc/ac$1;)V

    return-object v0
.end method

.method public i()Lc/d;
    .locals 1

    .line 245
    iget-object v0, p0, Lc/ac;->m:Lc/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lc/ac;->f:Lc/s;

    invoke-static {v0}, Lc/d;->a(Lc/s;)Lc/d;

    move-result-object v0

    iput-object v0, p0, Lc/ac;->m:Lc/d;

    :goto_0
    return-object v0
.end method

.method public j()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lc/ac;->k:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lc/ac;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/ac;->b:Lc/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/ac;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/ac;->a:Lc/aa;

    .line 280
    invoke-virtual {v1}, Lc/aa;->a()Lc/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
