.class public Lcom/birbit/android/jobqueue/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/m$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/birbit/android/jobqueue/m;

.field public static final b:Lcom/birbit/android/jobqueue/m;


# instance fields
.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/Integer;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/birbit/android/jobqueue/m$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/m$a;-><init>(Z)V

    sput-object v0, Lcom/birbit/android/jobqueue/m;->a:Lcom/birbit/android/jobqueue/m;

    .line 16
    new-instance v0, Lcom/birbit/android/jobqueue/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/birbit/android/jobqueue/m$a;-><init>(Z)V

    sput-object v0, Lcom/birbit/android/jobqueue/m;->b:Lcom/birbit/android/jobqueue/m;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/birbit/android/jobqueue/m;->f:Z

    .line 23
    iput-boolean p1, p0, Lcom/birbit/android/jobqueue/m;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/m;->c:Z

    return v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/birbit/android/jobqueue/m;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/birbit/android/jobqueue/m;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/birbit/android/jobqueue/m;->f:Z

    return v0
.end method
