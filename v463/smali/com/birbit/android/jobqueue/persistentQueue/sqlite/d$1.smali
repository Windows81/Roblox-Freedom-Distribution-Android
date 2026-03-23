.class Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d$1;
.super Landroidx/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/c/e<",
        "Ljava/lang/Long;",
        "Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d$1;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;

    invoke-direct {p0, p2}, Landroidx/c/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(ZLjava/lang/Long;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;)V
    .locals 0

    .line 31
    invoke-virtual {p3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->a()V

    return-void
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    check-cast p4, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d$1;->a(ZLjava/lang/Long;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;)V

    return-void
.end method
