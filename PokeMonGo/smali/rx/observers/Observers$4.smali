.class final Lrx/observers/Observers$4;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observers/Observers;->create(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .registers 4

    .prologue
    .line 171
    iput-object p1, p0, Lrx/observers/Observers$4;->val$onComplete:Lrx/functions/Action0;

    iput-object p2, p0, Lrx/observers/Observers$4;->val$onError:Lrx/functions/Action1;

    iput-object p3, p0, Lrx/observers/Observers$4;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lrx/observers/Observers$4;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 176
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 180
    iget-object v0, p0, Lrx/observers/Observers$4;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observers/Observers$4;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
