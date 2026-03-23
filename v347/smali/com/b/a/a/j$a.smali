.class public Lcom/b/a/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/b/a/a/i;

.field private e:J

.field private f:J

.field private g:Ljava/lang/Long;

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/b/a/a/j$a;->f:J

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/j$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/b/a/a/j$a;
    .locals 1

    .prologue
    .line 274
    iput p1, p0, Lcom/b/a/a/j$a;->a:I

    .line 275
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/b/a/a/j$a;->i:I

    .line 276
    return-object p0
.end method

.method public a(J)Lcom/b/a/a/j$a;
    .locals 1

    .prologue
    .line 291
    iput-wide p1, p0, Lcom/b/a/a/j$a;->e:J

    .line 292
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/b/a/a/j$a;->i:I

    .line 293
    return-object p0
.end method

.method public a(Lcom/b/a/a/i;)Lcom/b/a/a/j$a;
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/b/a/a/j$a;->d:Lcom/b/a/a/i;

    .line 288
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/j$a;
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/b/a/a/j$a;->b:Ljava/lang/String;

    .line 280
    return-object p0
.end method

.method public a()Lcom/b/a/a/j;
    .locals 13

    .prologue
    .line 309
    iget-object v0, p0, Lcom/b/a/a/j$a;->d:Lcom/b/a/a/i;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a priority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a created timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_3
    new-instance v1, Lcom/b/a/a/j;

    iget v2, p0, Lcom/b/a/a/j$a;->a:I

    iget-object v3, p0, Lcom/b/a/a/j$a;->b:Ljava/lang/String;

    iget v4, p0, Lcom/b/a/a/j$a;->c:I

    iget-object v5, p0, Lcom/b/a/a/j$a;->d:Lcom/b/a/a/i;

    iget-wide v6, p0, Lcom/b/a/a/j$a;->e:J

    iget-wide v8, p0, Lcom/b/a/a/j$a;->f:J

    iget-wide v10, p0, Lcom/b/a/a/j$a;->h:J

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/b/a/a/j;-><init>(ILjava/lang/String;ILcom/b/a/a/i;JJJLcom/b/a/a/j$1;)V

    .line 323
    iget-object v0, p0, Lcom/b/a/a/j$a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 324
    iget-object v0, p0, Lcom/b/a/a/j$a;->g:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/j;->c(J)V

    .line 326
    :cond_4
    return-object v1
.end method

.method public b(I)Lcom/b/a/a/j$a;
    .locals 0

    .prologue
    .line 283
    iput p1, p0, Lcom/b/a/a/j$a;->c:I

    .line 284
    return-object p0
.end method

.method public b(J)Lcom/b/a/a/j$a;
    .locals 1

    .prologue
    .line 296
    iput-wide p1, p0, Lcom/b/a/a/j$a;->f:J

    .line 297
    return-object p0
.end method

.method public c(J)Lcom/b/a/a/j$a;
    .locals 1

    .prologue
    .line 300
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/j$a;->g:Ljava/lang/Long;

    .line 301
    return-object p0
.end method

.method public d(J)Lcom/b/a/a/j$a;
    .locals 1

    .prologue
    .line 304
    iput-wide p1, p0, Lcom/b/a/a/j$a;->h:J

    .line 305
    iget v0, p0, Lcom/b/a/a/j$a;->i:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/a/j$a;->i:I

    .line 306
    return-object p0
.end method
