.class La/a/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/g/b;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:La/a/g/b;


# direct methods
.method constructor <init>(La/a/g/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 70
    iput-object p1, p0, La/a/g/b$1;->c:La/a/g/b;

    iput-object p2, p0, La/a/g/b$1;->a:Ljava/lang/Thread;

    iput-object p3, p0, La/a/g/b$1;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/g/c;)V
    .locals 2

    .line 73
    invoke-static {}, La/a/g/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Root handler event callback"

    invoke-static {p1, v0}, La/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, La/a/g/b$1;->c:La/a/g/b;

    invoke-static {p1}, La/a/g/b;->a(La/a/g/b;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iget-object v0, p0, La/a/g/b$1;->a:Ljava/lang/Thread;

    iget-object v1, p0, La/a/g/b$1;->b:Ljava/lang/Throwable;

    invoke-interface {p1, v0, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 75
    iget-object p1, p0, La/a/g/b$1;->c:La/a/g/b;

    invoke-static {p1}, La/a/g/b;->b(La/a/g/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
