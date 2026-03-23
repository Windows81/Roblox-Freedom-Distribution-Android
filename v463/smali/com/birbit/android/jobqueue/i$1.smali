.class Lcom/birbit/android/jobqueue/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/i;->a()Lcom/birbit/android/jobqueue/scheduling/Scheduler$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/i;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/i;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/birbit/android/jobqueue/i$1;->a:Lcom/birbit/android/jobqueue/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/birbit/android/jobqueue/i$1;->a:Lcom/birbit/android/jobqueue/i;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/i;->a(Lcom/birbit/android/jobqueue/i;Lcom/birbit/android/jobqueue/scheduling/a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public stop(Lcom/birbit/android/jobqueue/scheduling/a;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/birbit/android/jobqueue/i$1;->a:Lcom/birbit/android/jobqueue/i;

    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/i;->b(Lcom/birbit/android/jobqueue/i;Lcom/birbit/android/jobqueue/scheduling/a;)V

    const/4 p1, 0x0

    return p1
.end method
