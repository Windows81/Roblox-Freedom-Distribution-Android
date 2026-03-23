.class Lcom/b/a/a/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcom/b/a/a/g/b;

.field private c:Lcom/b/a/a/g/b;

.field private final e:Lcom/b/a/a/g/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/b/a/a/g/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/b/a/a/g/c;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 9
    iput-object v0, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    .line 15
    iput-object p1, p0, Lcom/b/a/a/g/j;->e:Lcom/b/a/a/g/c;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/g/j;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/g/j;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private a(Lcom/b/a/a/g/b;Lcom/b/a/a/g/b;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    if-ne v0, p2, :cond_0

    .line 68
    iput-object p1, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p2, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v0, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/g/j;->e:Lcom/b/a/a/g/c;

    invoke-virtual {v0, p2}, Lcom/b/a/a/g/c;->a(Lcom/b/a/a/g/b;)V

    .line 76
    return-void

    .line 73
    :cond_1
    iget-object v0, p2, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v0, p1, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/b/a/a/g/b;)V
    .locals 4

    .prologue
    .line 32
    const-string v0, "[%s] post message %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/b/a/a/g/j;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 35
    iput-object p1, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    iput-object p1, v0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 38
    iput-object p1, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 81
    iget-object v1, v0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v1, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 82
    iget-object v1, p0, Lcom/b/a/a/g/j;->e:Lcom/b/a/a/g/c;

    invoke-virtual {v1, v0}, Lcom/b/a/a/g/c;->a(Lcom/b/a/a/g/b;)V

    goto :goto_0

    .line 84
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    .line 85
    return-void
.end method

.method protected b(Lcom/b/a/a/g/d;)V
    .locals 3

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 53
    :goto_0
    if-eqz v2, :cond_1

    .line 54
    invoke-interface {p1, v2}, Lcom/b/a/a/g/d;->a(Lcom/b/a/a/g/b;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    iget-object v0, v2, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    .line 57
    invoke-direct {p0, v1, v2}, Lcom/b/a/a/g/j;->a(Lcom/b/a/a/g/b;Lcom/b/a/a/g/b;)V

    :goto_1
    move-object v2, v0

    .line 63
    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, v2, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    move-object v1, v2

    goto :goto_1

    .line 64
    :cond_1
    return-void
.end method

.method c()Lcom/b/a/a/g/b;
    .locals 5

    .prologue
    .line 20
    iget-object v0, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 21
    const-string v1, "[%s] remove message %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/a/g/j;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-object v1, v0, Lcom/b/a/a/g/b;->b:Lcom/b/a/a/g/b;

    iput-object v1, p0, Lcom/b/a/a/g/j;->b:Lcom/b/a/a/g/b;

    .line 24
    iget-object v1, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    if-ne v1, v0, :cond_0

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/b/a/a/g/j;->c:Lcom/b/a/a/g/b;

    .line 28
    :cond_0
    return-object v0
.end method
