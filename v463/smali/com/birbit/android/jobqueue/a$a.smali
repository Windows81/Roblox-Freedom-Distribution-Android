.class Lcom/birbit/android/jobqueue/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/birbit/android/jobqueue/scheduling/a;


# direct methods
.method public constructor <init>(JLcom/birbit/android/jobqueue/scheduling/a;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lcom/birbit/android/jobqueue/a$a;->a:J

    .line 120
    iput-object p3, p0, Lcom/birbit/android/jobqueue/a$a;->b:Lcom/birbit/android/jobqueue/scheduling/a;

    return-void
.end method
