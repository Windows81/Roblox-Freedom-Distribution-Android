.class Le/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h;->a(Le/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/d;

.field final synthetic b:Le/h;


# direct methods
.method constructor <init>(Le/h;Le/d;)V
    .locals 0

    .line 101
    iput-object p1, p0, Le/h$1;->b:Le/h;

    iput-object p2, p0, Le/h$1;->a:Le/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Le/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Le/h$1;->a:Le/d;

    iget-object v1, p0, Le/h$1;->b:Le/h;

    invoke-interface {v0, v1, p1}, Le/d;->a(Le/b;Le/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Le/h$1;->a:Le/d;

    iget-object v1, p0, Le/h$1;->b:Le/h;

    invoke-interface {v0, v1, p1}, Le/d;->a(Le/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lc/e;Lc/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object p1, p0, Le/h$1;->b:Le/h;

    invoke-virtual {p1, p2}, Le/h;->a(Lc/ac;)Le/l;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-direct {p0, p1}, Le/h$1;->a(Le/l;)V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    invoke-direct {p0, p1}, Le/h$1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lc/e;Ljava/io/IOException;)V
    .locals 1

    .line 116
    :try_start_0
    iget-object p1, p0, Le/h$1;->a:Le/d;

    iget-object v0, p0, Le/h$1;->b:Le/h;

    invoke-interface {p1, v0, p2}, Le/d;->a(Le/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
