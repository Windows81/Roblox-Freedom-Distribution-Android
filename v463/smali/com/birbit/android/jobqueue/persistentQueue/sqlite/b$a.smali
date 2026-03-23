.class public Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;->a:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$a;->b:Ljava/lang/String;

    return-void
.end method
