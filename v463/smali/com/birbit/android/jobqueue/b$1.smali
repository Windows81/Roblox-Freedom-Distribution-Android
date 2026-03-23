.class Lcom/birbit/android/jobqueue/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/b;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/b;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/birbit/android/jobqueue/b$1;->a:Lcom/birbit/android/jobqueue/b;

    iget-object v0, v0, Lcom/birbit/android/jobqueue/b;->a:Lcom/birbit/android/jobqueue/messaging/f;

    new-instance v1, Lcom/birbit/android/jobqueue/b$1$1;

    invoke-direct {v1, p0}, Lcom/birbit/android/jobqueue/b$1$1;-><init>(Lcom/birbit/android/jobqueue/b$1;)V

    invoke-virtual {v0, v1}, Lcom/birbit/android/jobqueue/messaging/f;->consume(Lcom/birbit/android/jobqueue/messaging/d;)V

    return-void
.end method
