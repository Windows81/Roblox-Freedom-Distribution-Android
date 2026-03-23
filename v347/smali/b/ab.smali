.class public final Lb/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/ab$a;
    }
.end annotation


# instance fields
.field private final a:Lb/z;

.field private final b:Lb/x;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lb/q;

.field private final f:Lb/r;

.field private final g:Lb/ac;

.field private final h:Lb/ab;

.field private final i:Lb/ab;

.field private final j:Lb/ab;

.field private final k:J

.field private final l:J

.field private volatile m:Lb/d;


# direct methods
.method private constructor <init>(Lb/ab$a;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lb/ab$a;->a(Lb/ab$a;)Lb/z;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->a:Lb/z;

    .line 60
    invoke-static {p1}, Lb/ab$a;->b(Lb/ab$a;)Lb/x;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->b:Lb/x;

    .line 61
    invoke-static {p1}, Lb/ab$a;->c(Lb/ab$a;)I

    move-result v0

    iput v0, p0, Lb/ab;->c:I

    .line 62
    invoke-static {p1}, Lb/ab$a;->d(Lb/ab$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->d:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lb/ab$a;->e(Lb/ab$a;)Lb/q;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->e:Lb/q;

    .line 64
    invoke-static {p1}, Lb/ab$a;->f(Lb/ab$a;)Lb/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/r$a;->a()Lb/r;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->f:Lb/r;

    .line 65
    invoke-static {p1}, Lb/ab$a;->g(Lb/ab$a;)Lb/ac;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->g:Lb/ac;

    .line 66
    invoke-static {p1}, Lb/ab$a;->h(Lb/ab$a;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->h:Lb/ab;

    .line 67
    invoke-static {p1}, Lb/ab$a;->i(Lb/ab$a;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->i:Lb/ab;

    .line 68
    invoke-static {p1}, Lb/ab$a;->j(Lb/ab$a;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->j:Lb/ab;

    .line 69
    invoke-static {p1}, Lb/ab$a;->k(Lb/ab$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lb/ab;->k:J

    .line 70
    invoke-static {p1}, Lb/ab$a;->l(Lb/ab$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lb/ab;->l:J

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lb/ab$a;Lb/ab$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lb/ab;-><init>(Lb/ab$a;)V

    return-void
.end method

.method static synthetic a(Lb/ab;)Lb/z;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->a:Lb/z;

    return-object v0
.end method

.method static synthetic b(Lb/ab;)Lb/x;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->b:Lb/x;

    return-object v0
.end method

.method static synthetic c(Lb/ab;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lb/ab;->c:I

    return v0
.end method

.method static synthetic d(Lb/ab;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lb/ab;)Lb/q;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->e:Lb/q;

    return-object v0
.end method

.method static synthetic f(Lb/ab;)Lb/r;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->f:Lb/r;

    return-object v0
.end method

.method static synthetic g(Lb/ab;)Lb/ac;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->g:Lb/ac;

    return-object v0
.end method

.method static synthetic h(Lb/ab;)Lb/ab;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->h:Lb/ab;

    return-object v0
.end method

.method static synthetic i(Lb/ab;)Lb/ab;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->i:Lb/ab;

    return-object v0
.end method

.method static synthetic j(Lb/ab;)Lb/ab;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lb/ab;->j:Lb/ab;

    return-object v0
.end method

.method static synthetic k(Lb/ab;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lb/ab;->k:J

    return-wide v0
.end method

.method static synthetic l(Lb/ab;)J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lb/ab;->l:J

    return-wide v0
.end method


# virtual methods
.method public a()Lb/z;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lb/ab;->a:Lb/z;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lb/ab;->f:Lb/r;

    invoke-virtual {v0, p1}, Lb/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public b()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lb/ab;->c:I

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lb/ab;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lb/ab;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lb/ab;->g:Lb/ac;

    invoke-virtual {v0}, Lb/ac;->close()V

    .line 270
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lb/ab;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lb/q;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lb/ab;->e:Lb/q;

    return-object v0
.end method

.method public f()Lb/r;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lb/ab;->f:Lb/r;

    return-object v0
.end method

.method public g()Lb/ac;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lb/ab;->g:Lb/ac;

    return-object v0
.end method

.method public h()Lb/ab$a;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lb/ab$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/ab$a;-><init>(Lb/ab;Lb/ab$1;)V

    return-object v0
.end method

.method public i()Lb/d;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lb/ab;->m:Lb/d;

    .line 246
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/ab;->f:Lb/r;

    invoke-static {v0}, Lb/d;->a(Lb/r;)Lb/d;

    move-result-object v0

    iput-object v0, p0, Lb/ab;->m:Lb/d;

    goto :goto_0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lb/ab;->k:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lb/ab;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/ab;->b:Lb/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/ab;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/ab;->a:Lb/z;

    .line 280
    invoke-virtual {v1}, Lb/z;->a()Lb/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    return-object v0
.end method
