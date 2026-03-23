.class public Lcom/b/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:J

.field private h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v2, p0, Lcom/b/a/a/o;->a:J

    .line 24
    iput-wide v2, p0, Lcom/b/a/a/o;->b:J

    .line 25
    iput-object v0, p0, Lcom/b/a/a/o;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/b/a/a/o;->d:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/a/o;->e:Z

    .line 37
    iput p1, p0, Lcom/b/a/a/o;->f:I

    .line 38
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/b/a/a/o;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/o;
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/b/a/a/o;->c:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/b/a/a/o;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/b/a/a/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/b/a/a/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/b/a/a/o;->e:Z

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/b/a/a/o;->f:I

    return v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/b/a/a/o;->g:J

    return-wide v0
.end method

.method public h()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lcom/b/a/a/o;->h:Ljava/util/HashSet;

    return-object v0
.end method
