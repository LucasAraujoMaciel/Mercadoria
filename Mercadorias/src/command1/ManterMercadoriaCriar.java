package command;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Mercadoria;
import to.MercadoriaTO;

public class CriarMercadoria{

	
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pCodigo = request.getParameter("codigo");
		String pTipo = request.getParameter("tipo");
		String pNome = request.getParameter("nome");;
		double pQuantidade = Double.parseDouble(request.getParameter("quantidade"));
		double pPreco = Double.parseDouble(request.getParameter("preco"));
		String pNegocio= request.getParameter("negocio");
		int cod = -1;
		try {
			cod = Integer.parseInt(pCodigo);
		} catch (Exception e) {

		}

		Mercadoria mercadoria = new Mercadoria(cod, pTipo, pNome, pQuantidade, pPreco, pNegocio);
		HttpSession session = request.getSession();

		mercadoria.criar();
		ArrayList<MercadoriaTO> lista = new ArrayList<>();
		lista.add(mercadoria.getTO());
		session.setAttribute("lista", lista);
		RequestDispatcher view =  request.getRequestDispatcher("ListarMercadorias.jsp");
		view.forward(request, response);
	}
}
