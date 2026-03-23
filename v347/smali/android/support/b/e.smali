.class public final Landroid/support/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/b/g;

.field private final c:Landroid/support/b/f;

.field private final d:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/b/g;Landroid/support/b/f;Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/b/e;->a:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Landroid/support/b/e;->b:Landroid/support/b/g;

    .line 65
    iput-object p2, p0, Landroid/support/b/e;->c:Landroid/support/b/f;

    .line 66
    iput-object p3, p0, Landroid/support/b/e;->d:Landroid/content/ComponentName;

    .line 67
    return-void
.end method


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/b/e;->c:Landroid/support/b/f;

    invoke-interface {v0}, Landroid/support/b/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/support/b/e;->b:Landroid/support/b/g;

    iget-object v1, p0, Landroid/support/b/e;->c:Landroid/support/b/f;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/b/g;->a(Landroid/support/b/f;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/b/e;->d:Landroid/content/ComponentName;

    return-object v0
.end method
