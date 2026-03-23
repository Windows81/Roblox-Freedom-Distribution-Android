.class public interface abstract Lcom/c/a/t$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# static fields
.field public static final a:Lcom/c/a/t$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/c/a/t$f$1;

    invoke-direct {v0}, Lcom/c/a/t$f$1;-><init>()V

    sput-object v0, Lcom/c/a/t$f;->a:Lcom/c/a/t$f;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/c/a/w;)Lcom/c/a/w;
.end method
