.class public Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 244
    invoke-direct/range {v0 .. v5}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;Z)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->b:Ljava/lang/String;

    .line 251
    iput p3, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    .line 252
    iput-object p4, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;

    .line 253
    iput-boolean p5, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->e:Z

    return-void
.end method
