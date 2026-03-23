.class Lio/chirp/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/chirp/a/c;


# direct methods
.method constructor <init>(Lio/chirp/a/c;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 2

    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {p1}, Lio/chirp/a/c;->i(Lio/chirp/a/c;)Lio/chirp/a/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {p1}, Lio/chirp/a/c;->a(Lio/chirp/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {p1}, Lio/chirp/a/c;->i(Lio/chirp/a/c;)Lio/chirp/a/f;

    move-result-object p1

    iget-object v0, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->j(Lio/chirp/a/c;)[B

    move-result-object v0

    iget-object v1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {v1}, Lio/chirp/a/c;->g(Lio/chirp/a/c;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/chirp/a/f;->b([BI)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {p1}, Lio/chirp/a/c;->c(Lio/chirp/a/c;)Lio/chirp/a/d;

    move-result-object p1

    iget-object v0, p0, Lio/chirp/a/c$3;->a:Lio/chirp/a/c;

    invoke-static {v0}, Lio/chirp/a/c;->j(Lio/chirp/a/c;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lio/chirp/a/d;->processShortsInput([B)V
    :try_end_0
    .catch Lio/chirp/a/f$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
