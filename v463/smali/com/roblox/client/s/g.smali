.class public Lcom/roblox/client/s/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/s/g$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static b:Lcom/birbit/android/jobqueue/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Lcom/birbit/android/jobqueue/i;
    .locals 1

    .line 39
    sget-object v0, Lcom/roblox/client/s/g;->b:Lcom/birbit/android/jobqueue/i;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/roblox/client/s/g;->b:Lcom/birbit/android/jobqueue/i;

    if-nez v0, :cond_2

    .line 21
    new-instance v0, Lcom/birbit/android/jobqueue/b/a$a;

    invoke-direct {v0, p0}, Lcom/birbit/android/jobqueue/b/a$a;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 22
    invoke-virtual {v0, p0}, Lcom/birbit/android/jobqueue/b/a$a;->c(I)Lcom/birbit/android/jobqueue/b/a$a;

    move-result-object p0

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p0, v0}, Lcom/birbit/android/jobqueue/b/a$a;->b(I)Lcom/birbit/android/jobqueue/b/a$a;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Lcom/birbit/android/jobqueue/b/a$a;->d(I)Lcom/birbit/android/jobqueue/b/a$a;

    move-result-object p0

    const/16 v0, 0x78

    .line 25
    invoke-virtual {p0, v0}, Lcom/birbit/android/jobqueue/b/a$a;->a(I)Lcom/birbit/android/jobqueue/b/a$a;

    move-result-object p0

    .line 27
    sget-boolean v0, Lcom/roblox/client/s/g;->a:Z

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/roblox/client/s/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/s/g$a;-><init>(Lcom/roblox/client/s/g$1;)V

    invoke-virtual {p0, v0}, Lcom/birbit/android/jobqueue/b/a$a;->a(Lcom/birbit/android/jobqueue/log/CustomLogger;)Lcom/birbit/android/jobqueue/b/a$a;

    :cond_0
    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/b/a$a;->a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/b/a$a;

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/b/a$a;->a()Lcom/birbit/android/jobqueue/b/a;

    move-result-object p0

    .line 34
    new-instance p1, Lcom/birbit/android/jobqueue/i;

    invoke-direct {p1, p0}, Lcom/birbit/android/jobqueue/i;-><init>(Lcom/birbit/android/jobqueue/b/a;)V

    sput-object p1, Lcom/roblox/client/s/g;->b:Lcom/birbit/android/jobqueue/i;

    :cond_2
    return-void
.end method
