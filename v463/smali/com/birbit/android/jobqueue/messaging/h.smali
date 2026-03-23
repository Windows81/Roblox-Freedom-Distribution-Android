.class Lcom/birbit/android/jobqueue/messaging/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Lcom/birbit/android/jobqueue/messaging/b;

.field private c:Lcom/birbit/android/jobqueue/messaging/b;

.field private final e:Lcom/birbit/android/jobqueue/messaging/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/birbit/android/jobqueue/messaging/h;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/birbit/android/jobqueue/messaging/c;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 9
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    .line 15
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->e:Lcom/birbit/android/jobqueue/messaging/c;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/birbit/android/jobqueue/messaging/h;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/messaging/b;Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    if-ne v0, p2, :cond_0

    .line 68
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    :cond_0
    if-nez p1, :cond_1

    .line 71
    iget-object p1, p2, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p2, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v0, p1, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->e:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-virtual {p1, p2}, Lcom/birbit/android/jobqueue/messaging/c;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    return-void
.end method


# virtual methods
.method a()Lcom/birbit/android/jobqueue/messaging/b;
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    iget-object v2, p0, Lcom/birbit/android/jobqueue/messaging/h;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "[%s] remove message %s"

    invoke-static {v2, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 24
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    :cond_0
    return-object v0
.end method

.method protected a(Lcom/birbit/android/jobqueue/messaging/MessagePredicate;)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p1, v0}, Lcom/birbit/android/jobqueue/messaging/MessagePredicate;->onMessage(Lcom/birbit/android/jobqueue/messaging/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 57
    invoke-direct {p0, v1, v0}, Lcom/birbit/android/jobqueue/messaging/h;->a(Lcom/birbit/android/jobqueue/messaging/b;Lcom/birbit/android/jobqueue/messaging/b;)V

    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    iput-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 82
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->e:Lcom/birbit/android/jobqueue/messaging/c;

    invoke-virtual {v1, v0}, Lcom/birbit/android/jobqueue/messaging/c;->a(Lcom/birbit/android/jobqueue/messaging/b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    return-void
.end method

.method protected post(Lcom/birbit/android/jobqueue/messaging/b;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/birbit/android/jobqueue/messaging/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "[%s] post message %s"

    invoke-static {v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    if-nez v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 35
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, v0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    .line 38
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/h;->c:Lcom/birbit/android/jobqueue/messaging/b;

    :goto_0
    return-void
.end method
