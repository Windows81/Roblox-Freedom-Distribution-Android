.class Le/h$a$1;
.super Ld/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h$a;->d()Ld/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/h$a;


# direct methods
.method constructor <init>(Le/h$a;Ld/s;)V
    .locals 0

    .line 276
    iput-object p1, p0, Le/h$a$1;->a:Le/h$a;

    invoke-direct {p0, p2}, Ld/h;-><init>(Ld/s;)V

    return-void
.end method


# virtual methods
.method public a(Ld/c;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ld/h;->a(Ld/c;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 281
    iget-object p2, p0, Le/h$a$1;->a:Le/h$a;

    iput-object p1, p2, Le/h$a;->a:Ljava/io/IOException;

    .line 282
    throw p1
.end method
