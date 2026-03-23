.class public Lcom/birbit/android/jobqueue/log/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/birbit/android/jobqueue/log/CustomLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 9
    invoke-static {}, Lcom/birbit/android/jobqueue/log/a;->a()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 13
    new-instance v0, Lcom/birbit/android/jobqueue/log/a$1;

    invoke-direct {v0}, Lcom/birbit/android/jobqueue/log/a$1;-><init>()V

    invoke-static {v0}, Lcom/birbit/android/jobqueue/log/a;->a(Lcom/birbit/android/jobqueue/log/CustomLogger;)V

    return-void
.end method

.method public static a(Lcom/birbit/android/jobqueue/log/CustomLogger;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/birbit/android/jobqueue/log/a;->a:Lcom/birbit/android/jobqueue/log/CustomLogger;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 45
    sget-object v0, Lcom/birbit/android/jobqueue/log/a;->a:Lcom/birbit/android/jobqueue/log/CustomLogger;

    invoke-interface {v0, p0, p1}, Lcom/birbit/android/jobqueue/log/CustomLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/birbit/android/jobqueue/log/a;->a:Lcom/birbit/android/jobqueue/log/CustomLogger;

    invoke-interface {v0, p0, p1, p2}, Lcom/birbit/android/jobqueue/log/CustomLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/birbit/android/jobqueue/log/a;->a:Lcom/birbit/android/jobqueue/log/CustomLogger;

    invoke-interface {v0, p0, p1}, Lcom/birbit/android/jobqueue/log/CustomLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/birbit/android/jobqueue/log/a;->a:Lcom/birbit/android/jobqueue/log/CustomLogger;

    invoke-interface {v0}, Lcom/birbit/android/jobqueue/log/CustomLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method
