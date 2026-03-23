.class public Lcom/birbit/android/jobqueue/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/birbit/android/jobqueue/g;

.field private e:J

.field private f:J

.field private g:Ljava/lang/Long;

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 265
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/h$a;->f:J

    const/4 v0, 0x0

    .line 268
    iput v0, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 274
    iput p1, p0, Lcom/birbit/android/jobqueue/h$a;->a:I

    .line 275
    iget p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    return-object p0
.end method

.method public a(J)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 291
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h$a;->e:J

    .line 292
    iget p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    return-object p0
.end method

.method public a(Lcom/birbit/android/jobqueue/g;)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/birbit/android/jobqueue/h$a;->d:Lcom/birbit/android/jobqueue/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/birbit/android/jobqueue/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/birbit/android/jobqueue/h;
    .locals 13

    .line 309
    iget-object v4, p0, Lcom/birbit/android/jobqueue/h$a;->d:Lcom/birbit/android/jobqueue/g;

    if-eqz v4, :cond_4

    .line 312
    iget v0, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 321
    new-instance v12, Lcom/birbit/android/jobqueue/h;

    iget v1, p0, Lcom/birbit/android/jobqueue/h$a;->a:I

    iget-object v2, p0, Lcom/birbit/android/jobqueue/h$a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/birbit/android/jobqueue/h$a;->c:I

    iget-wide v5, p0, Lcom/birbit/android/jobqueue/h$a;->e:J

    iget-wide v7, p0, Lcom/birbit/android/jobqueue/h$a;->f:J

    iget-wide v9, p0, Lcom/birbit/android/jobqueue/h$a;->h:J

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/birbit/android/jobqueue/h;-><init>(ILjava/lang/String;ILcom/birbit/android/jobqueue/g;JJJLcom/birbit/android/jobqueue/h$1;)V

    .line 323
    iget-object v0, p0, Lcom/birbit/android/jobqueue/h$a;->g:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/birbit/android/jobqueue/h;->c(J)V

    :cond_0
    return-object v12

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a created timestamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a priority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 283
    iput p1, p0, Lcom/birbit/android/jobqueue/h$a;->c:I

    return-object p0
.end method

.method public b(J)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 296
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h$a;->f:J

    return-object p0
.end method

.method public c(J)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 300
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/h$a;->g:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lcom/birbit/android/jobqueue/h$a;
    .locals 0

    .line 304
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/h$a;->h:J

    .line 305
    iget p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/birbit/android/jobqueue/h$a;->i:I

    return-object p0
.end method
