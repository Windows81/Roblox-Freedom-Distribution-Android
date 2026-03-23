.class Lcom/birbit/android/jobqueue/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/a;->a(Landroid/content/Context;Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/a;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/a;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/birbit/android/jobqueue/a$1;->a:Lcom/birbit/android/jobqueue/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a$1;->a:Lcom/birbit/android/jobqueue/a;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/a;->a(Lcom/birbit/android/jobqueue/a;Lcom/birbit/android/jobqueue/scheduling/a;)V

    .line 40
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a$1;->a:Lcom/birbit/android/jobqueue/a;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/a;->c(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result p1

    return p1
.end method

.method public stop(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/birbit/android/jobqueue/a$1;->a:Lcom/birbit/android/jobqueue/a;

    invoke-virtual {v0, p1}, Lcom/birbit/android/jobqueue/a;->d(Lcom/birbit/android/jobqueue/scheduling/a;)Z

    move-result p1

    return p1
.end method
