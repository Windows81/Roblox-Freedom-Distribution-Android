.class public abstract Lcom/birbit/android/jobqueue/messaging/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/birbit/android/jobqueue/messaging/g;

.field b:Lcom/birbit/android/jobqueue/messaging/b;

.field public c:J


# direct methods
.method protected constructor <init>(Lcom/birbit/android/jobqueue/messaging/g;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 7
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    .line 10
    iput-object p1, p0, Lcom/birbit/android/jobqueue/messaging/b;->a:Lcom/birbit/android/jobqueue/messaging/g;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final b()V
    .locals 2

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/birbit/android/jobqueue/messaging/b;->b:Lcom/birbit/android/jobqueue/messaging/b;

    const-wide/high16 v0, -0x8000000000000000L

    .line 17
    iput-wide v0, p0, Lcom/birbit/android/jobqueue/messaging/b;->c:J

    .line 18
    invoke-virtual {p0}, Lcom/birbit/android/jobqueue/messaging/b;->a()V

    return-void
.end method
