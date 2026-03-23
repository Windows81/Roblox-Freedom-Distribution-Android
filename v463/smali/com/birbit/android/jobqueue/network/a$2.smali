.class Lcom/birbit/android/jobqueue/network/a$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/birbit/android/jobqueue/network/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/birbit/android/jobqueue/network/a;


# direct methods
.method constructor <init>(Lcom/birbit/android/jobqueue/network/a;Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/birbit/android/jobqueue/network/a$2;->b:Lcom/birbit/android/jobqueue/network/a;

    iput-object p2, p0, Lcom/birbit/android/jobqueue/network/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/birbit/android/jobqueue/network/a$2;->b:Lcom/birbit/android/jobqueue/network/a;

    iget-object v0, p0, Lcom/birbit/android/jobqueue/network/a$2;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/network/a;->a(Landroid/content/Context;)V

    return-void
.end method
