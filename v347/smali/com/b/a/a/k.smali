.class public Lcom/b/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# instance fields
.field final b:Lcom/b/a/a/l;

.field private final c:Lcom/b/a/a/g/g;

.field private final d:Lcom/b/a/a/g/c;

.field private e:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/b/a/a/k;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/c/a;)V
    .locals 3

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/b/a/a/g/c;

    invoke-direct {v0}, Lcom/b/a/a/g/c;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/k;->d:Lcom/b/a/a/g/c;

    .line 60
    new-instance v0, Lcom/b/a/a/g/g;

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->m()Lcom/b/a/a/k/b;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/a/k;->d:Lcom/b/a/a/g/c;

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/g/g;-><init>(Lcom/b/a/a/k/b;Lcom/b/a/a/g/c;)V

    iput-object v0, p0, Lcom/b/a/a/k;->c:Lcom/b/a/a/g/g;

    .line 61
    new-instance v0, Lcom/b/a/a/l;

    iget-object v1, p0, Lcom/b/a/a/k;->c:Lcom/b/a/a/g/g;

    iget-object v2, p0, Lcom/b/a/a/k;->d:Lcom/b/a/a/g/c;

    invoke-direct {v0, p1, v1, v2}, Lcom/b/a/a/l;-><init>(Lcom/b/a/a/c/a;Lcom/b/a/a/g/g;Lcom/b/a/a/g/c;)V

    iput-object v0, p0, Lcom/b/a/a/k;->b:Lcom/b/a/a/l;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/b/a/a/k;->b:Lcom/b/a/a/l;

    const-string v2, "job-manager"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/b/a/a/k;->e:Ljava/lang/Thread;

    .line 63
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->o()Lcom/b/a/a/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/b/a/a/k;->a()Lcom/b/a/a/j/a$a;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->o()Lcom/b/a/a/j/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/b/a/a/j/a;->a(Landroid/content/Context;Lcom/b/a/a/j/a$a;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/k;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method

.method private a()Lcom/b/a/a/j/a$a;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/b/a/a/k$1;

    invoke-direct {v0, p0}, Lcom/b/a/a/k$1;-><init>(Lcom/b/a/a/k;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/b/a/a/i;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/b/a/a/k;->d:Lcom/b/a/a/g/c;

    const-class v1, Lcom/b/a/a/g/a/a;

    invoke-virtual {v0, v1}, Lcom/b/a/a/g/c;->a(Ljava/lang/Class;)Lcom/b/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/g/a/a;

    .line 212
    invoke-virtual {v0, p1}, Lcom/b/a/a/g/a/a;->a(Lcom/b/a/a/i;)V

    .line 213
    iget-object v1, p0, Lcom/b/a/a/k;->c:Lcom/b/a/a/g/g;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/g;->a(Lcom/b/a/a/g/b;)V

    .line 214
    return-void
.end method
