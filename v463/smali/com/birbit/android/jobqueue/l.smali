.class public Lcom/birbit/android/jobqueue/l;
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
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 23
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/l;->a:J

    .line 24
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/l;->b:J

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/birbit/android/jobqueue/l;->c:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/birbit/android/jobqueue/l;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/l;->e:Z

    .line 37
    iput p1, p0, Lcom/birbit/android/jobqueue/l;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/l;->a:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/l;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/birbit/android/jobqueue/l;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/l;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/birbit/android/jobqueue/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/birbit/android/jobqueue/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/l;->e:Z

    return v0
.end method

.method public f()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/birbit/android/jobqueue/l;->f:I

    return v0
.end method

.method public g()J
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/birbit/android/jobqueue/l;->g:J

    return-wide v0
.end method

.method public h()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/birbit/android/jobqueue/l;->h:Ljava/util/HashSet;

    return-object v0
.end method
