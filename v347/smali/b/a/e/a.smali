.class public interface abstract Lb/a/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lb/a/e/a$1;

    invoke-direct {v0}, Lb/a/e/a$1;-><init>()V

    sput-object v0, Lb/a/e/a;->a:Lb/a/e/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method
